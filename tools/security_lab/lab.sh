#!/usr/bin/env bash
set -euo pipefail

readonly REPOSITORY_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
readonly COMPOSE_DIRECTORY="${REPOSITORY_ROOT}/deployment/docker_compose"
readonly APPROVAL_FILE="${REPOSITORY_ROOT}/.security-lab/approval.env"
readonly NETWORK_NAME="onyx_security_lab_active"
readonly MINIMUM_FREE_KIB=$((5 * 1024 * 1024))

readonly -a SETUP_COMPOSE_ARGUMENTS=(
  --project-directory "${COMPOSE_DIRECTORY}"
  -f "${COMPOSE_DIRECTORY}/docker-compose.yml"
  -f "${COMPOSE_DIRECTORY}/docker-compose.onyx-lite.yml"
)

readonly -a ACTIVE_COMPOSE_ARGUMENTS=(
  --project-directory "${COMPOSE_DIRECTORY}"
  -f "${COMPOSE_DIRECTORY}/docker-compose.yml"
  -f "${COMPOSE_DIRECTORY}/docker-compose.onyx-lite.yml"
  -f "${COMPOSE_DIRECTORY}/docker-compose.security-lab-active.yml"
)

compose() {
  docker compose "${ACTIVE_COMPOSE_ARGUMENTS[@]}" "$@"
}

setup_compose() {
  docker compose "${SETUP_COMPOSE_ARGUMENTS[@]}" "$@"
}

require_command() {
  command -v "$1" >/dev/null 2>&1 || {
    echo "error: required command is missing: $1" >&2
    exit 1
  }
}

check_approval() {
  if [[ ! -r "${APPROVAL_FILE}" ]]; then
    echo "error: create .security-lab/approval.env after signed approval" >&2
    exit 1
  fi

  # shellcheck disable=SC1090
  source "${APPROVAL_FILE}"
  : "${ONYX_LAB_DECISION:=}"
  : "${ONYX_LAB_SCOPE_SHA:=}"
  : "${ONYX_LAB_APPROVAL_TAG:=}"
  : "${ONYX_LAB_COST_GATE:=}"
  : "${ONYX_LAB_VALID_FROM:=}"
  : "${ONYX_LAB_VALID_UNTIL:=}"

  [[ "${ONYX_LAB_DECISION}" == "APPROVED" ]] || {
    echo "error: authorization decision is not APPROVED" >&2
    exit 1
  }
  [[ "${ONYX_LAB_SCOPE_SHA}" =~ ^[0-9a-f]{40}$ ]] || {
    echo "error: ONYX_LAB_SCOPE_SHA must be a full commit SHA" >&2
    exit 1
  }
  [[ -n "${ONYX_LAB_APPROVAL_TAG}" ]] || {
    echo "error: a signed approval tag is required" >&2
    exit 1
  }
  git -C "${REPOSITORY_ROOT}" tag -v "${ONYX_LAB_APPROVAL_TAG}" >/dev/null
  [[ "$(git -C "${REPOSITORY_ROOT}" rev-list -n 1 "${ONYX_LAB_APPROVAL_TAG}")" == "${ONYX_LAB_SCOPE_SHA}" ]] || {
    echo "error: the signed approval tag does not identify the scope SHA" >&2
    exit 1
  }
  [[ "${ONYX_LAB_COST_GATE}" == "PASS" || "${ONYX_LAB_COST_GATE}" == "NOT_USED" ]] || {
    echo "error: the Codespaces zero-cost gate has not passed" >&2
    exit 1
  }
  [[ "$(git -C "${REPOSITORY_ROOT}" rev-parse HEAD)" == "${ONYX_LAB_SCOPE_SHA}" ]] || {
    echo "error: check out the approved scope commit before active testing" >&2
    exit 1
  }
  [[ "${ONYX_LAB_VALID_FROM}" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]] || {
    echo "error: ONYX_LAB_VALID_FROM must use YYYY-MM-DD" >&2
    exit 1
  }
  [[ "${ONYX_LAB_VALID_UNTIL}" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]] || {
    echo "error: ONYX_LAB_VALID_UNTIL must use YYYY-MM-DD" >&2
    exit 1
  }
  [[ "$(date -u +%Y-%m-%d)" > "${ONYX_LAB_VALID_FROM}" || "$(date -u +%Y-%m-%d)" == "${ONYX_LAB_VALID_FROM}" ]] || {
    echo "error: authorization is not active yet" >&2
    exit 1
  }
  [[ "$(date -u +%Y-%m-%d)" < "${ONYX_LAB_VALID_UNTIL}" ]] || {
    echo "error: authorization has expired" >&2
    exit 1
  }
}

check_disk() {
  local available_kib
  local used_percent
  read -r available_kib used_percent < <(
    df -Pk "${REPOSITORY_ROOT}" | awk 'NR == 2 {gsub(/%/, "", $5); print $4, $5}'
  )
  if ((available_kib < MINIMUM_FREE_KIB || used_percent >= 80)); then
    echo "error: keep at least 5 GiB and 20 percent disk space free" >&2
    exit 1
  fi
}

check_local_mcp() {
  if grep -Eq '"type"[[:space:]]*:[[:space:]]*"http"|https?://' "${REPOSITORY_ROOT}/.mcp.json"; then
    echo "error: .mcp.json contains a network MCP endpoint" >&2
    exit 1
  fi
}

set_and_check_private_ports() {
  [[ -n "${CODESPACE_NAME:-}" ]] || return 0
  require_command gh
  gh codespace ports visibility 3000:private -c "${CODESPACE_NAME}"
  if gh codespace ports -c "${CODESPACE_NAME}" \
    --json sourcePort,visibility \
    --jq '.[] | select(.visibility != "private") | .sourcePort' | grep -q .; then
    echo "error: at least one forwarded Codespaces port is not private" >&2
    exit 1
  fi
}

verify_active_mode() {
  compose config --quiet
  [[ "$(docker network inspect "${NETWORK_NAME}" --format '{{.Internal}}')" == "true" ]] || {
    echo "error: active target network is not internal" >&2
    exit 1
  }
  set_and_check_private_ports
}

case "${1:-}" in
  setup)
    require_command docker
    require_command uv
    echo "Setup mode permits approved repository and package downloads."
    uv sync --frozen
    setup_compose pull api_server web_server relational_db nginx
    echo "Setup complete. Do not run active tests in setup mode."
    ;;
  active)
    require_command docker
    check_approval
    check_disk
    check_local_mcp
    compose config --quiet
    compose up -d --wait --pull never \
      relational_db api_server web_server nginx lab_assessor
    if ! verify_active_mode; then
      compose down
      exit 1
    fi
    echo "Active-test mode is ready. Run requests from lab_assessor."
    ;;
  verify)
    require_command docker
    check_approval
    check_disk
    check_local_mcp
    verify_active_mode
    ;;
  stop)
    require_command docker
    compose down
    ;;
  *)
    echo "usage: $0 {setup|active|verify|stop}" >&2
    exit 2
    ;;
esac
