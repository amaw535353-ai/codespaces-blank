# Laboratory Operations

## Setup mode

Setup mode is the only mode that permits dependency and container-image downloads.

```bash
tools/security_lab/lab.sh setup
```

Do not send active test traffic in setup mode.

## Active-test mode

Create `.security-lab/approval.env` only after separate signed approval.

Create and verify the signed approval tag after the scope commit exists:

```bash
git tag -s onyx-lite-scope-v1 FULL_SCOPE_SHA
git tag -v onyx-lite-scope-v1
git push origin onyx-lite-scope-v1
```

Use the approval-record fields as the signed tag message.

```bash
cp tools/security_lab/approval.env.template .security-lab/approval.env
tools/security_lab/lab.sh active
```

The command checks authorization, disk space, MCP configuration, Compose syntax, network isolation, and Codespaces port visibility.

Run requests from the credential-free assessor container:

```bash
docker compose --project-name onyx-security-lab exec lab_assessor /bin/sh
```

Do not enable the `requires-separate-authorization` profile.

## Credential boundary

The active overlay removes service environment files and host gateway aliases.

It does not mount GitHub, Claude, AWS, SSH, cloud, or user credential files into target containers.

The Codespaces development shell is the control plane. Do not run untrusted payloads in that shell.

## Codespaces cost gate

Before approval, open <https://github.com/settings/billing> and create a Codespaces product budget.

Set the budget to USD 0 if GitHub accepts it. Enable the hard-stop option when available.

If GitHub cannot enforce zero spending, do not use Codespaces for active testing. Use the local laboratory.

Record a sanitized confirmation in the approval record. Do not record billing identifiers.

## Port gate

Only port 3000 is approved. GitHub Codespaces must show `private` for every forwarded port.

Verify with:

```bash
gh codespace ports -c "$CODESPACE_NAME" --json sourcePort,visibility
```

The lab script sets port 3000 to private and fails if any forwarded port is not private.
