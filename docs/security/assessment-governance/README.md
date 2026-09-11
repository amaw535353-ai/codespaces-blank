# Onyx Security Assessment Governance

Status: Draft. Active testing is not authorized until the approval checklist is complete.

This package governs Ahmed's self-controlled Onyx security lab. It applies before any active security test starts.

## Documents

- [Authorization](AUTHORIZATION.md)
- [Scope](SCOPE.md)
- [Rules of engagement](RULES_OF_ENGAGEMENT.md)
- [Ethics and safety](ETHICS_AND_SAFETY.md)
- [Data classification](DATA_CLASSIFICATION.md)
- [Evidence handling](EVIDENCE_HANDLING.md)
- [Framework applicability](FRAMEWORK_APPLICABILITY.md)
- [Responsible disclosure](RESPONSIBLE_DISCLOSURE.md)
- [Vulnerability report template](VULNERABILITY_REPORT_TEMPLATE.md)
- [Approval checklist](APPROVAL_CHECKLIST.md)

## Decision gate

Do not start active testing until all mandatory checklist items pass.

Passive source review may begin before approval. It must not access external systems or sensitive data.

## Core boundaries

- Use only a self-controlled Onyx laboratory.
- Use only synthetic users, documents, credentials, and events.
- Keep external model APIs and production connectors disabled.
- Do not test GitHub, Onyx Cloud, public demos, or third-party services.
- Stop when scope, safety, data ownership, cost, or authorization is uncertain.
- Keep genuine unresolved vulnerabilities private.

## Public repository warning

This repository is public. Do not commit secrets, exploit code, or unresolved vulnerability evidence.

Store sensitive evidence in an access-controlled private location. Publish only sanitized material after coordinated disclosure.

## Document control

| Field | Value |
| --- | --- |
| System | Onyx security laboratory |
| Repository | `amaw535353-ai/codespaces-blank` |
| Owner and authorizer | Ahmed |
| Assessor | Ahmed, with AI assistance under human control |
| Package version | 1.0-draft |
| Prepared | 2026-09-11 |
| Review trigger | Scope, environment, data, tool, or disclosure-policy change |

