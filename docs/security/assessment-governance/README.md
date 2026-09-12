# Onyx Security Assessment Governance

Status: Draft. Active testing is not authorized until the approval checklist passes.

This package governs Ahmed's self-controlled Onyx Lite security laboratory.

## Documents

- [Authorization](AUTHORIZATION.md)
- [Scope](SCOPE.md)
- [Rules of engagement](RULES_OF_ENGAGEMENT.md)
- [Ethics and safety](ETHICS_AND_SAFETY.md)
- [Data classification](DATA_CLASSIFICATION.md)
- [Evidence handling](EVIDENCE_HANDLING.md)
- [Framework applicability](FRAMEWORK_APPLICABILITY.md)
- [Laboratory operations](LAB_OPERATIONS.md)
- [Approval record template](APPROVAL_RECORD_TEMPLATE.md)
- [Responsible disclosure](RESPONSIBLE_DISCLOSURE.md)
- [Vulnerability report template](VULNERABILITY_REPORT_TEMPLATE.md)
- [Approval checklist](APPROVAL_CHECKLIST.md)

## Decision gate

Passive source review may begin. Do not start active testing until every mandatory check passes.

The signed approval must reference an immutable scope commit. It must remain separate from that commit.

## Core boundaries

- Use Onyx Lite only.
- Use only self-controlled target containers and synthetic data.
- Keep target containers on the internal active-test network.
- Use only the local synthetic MCP server.
- Do not start code execution, RAG, connectors, or Standard services.
- Do not test GitHub, Codespaces, Onyx Cloud, public demos, or third parties.
- Stop when authorization, safety, ownership, cost, or scope is uncertain.

## Public repository warning

Do not commit credentials, restricted evidence, or unresolved vulnerability details.

## Document control

| Field | Value |
| --- | --- |
| System | Onyx Lite security laboratory |
| Repository | `amaw535353-ai/codespaces-blank` |
| Owner and assessor | Ahmed |
| Package version | 1.1-draft |
| Review trigger | Scope, environment, data, tool, cost, or disclosure-policy change |
