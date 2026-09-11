# Security Assessment Authorization

## Authorization status

**PENDING OWNER APPROVAL**

This document does not authorize active testing until the owner records approval below.

## Purpose

The assessment supports defensive learning and improvement of a self-controlled Onyx laboratory.

The work will identify risks, verify controls, create fixes, and produce sanitized portfolio evidence.

## Parties

| Role | Party | Authority |
| --- | --- | --- |
| System owner and authorizer | Ahmed | Owns the repository and controls the laboratory |
| Assessor | Ahmed | Runs approved tests and makes safety decisions |
| AI assistant | ChatGPT Work | Drafts, explains, reviews, and runs only approved actions |
| Upstream maintainer | Onyx project | Receives possible upstream vulnerabilities privately |

The human assessor remains responsible for scope, interpretation, safety, and disclosure decisions.

## Authorized assets

- Source code in `amaw535353-ai/codespaces-blank`.
- A local checkout of that repository.
- A private Codespace created from that repository, if Ahmed starts it.
- Onyx services inside the approved laboratory.
- Laboratory PostgreSQL, Redis, and OpenSearch services.
- Local mock LLM and MCP services.
- Synthetic users, tenants, documents, credentials, prompts, and logs.

Authorization covers only assets owned or controlled by Ahmed.

## Authorized activities

- Passive source and configuration review.
- Architecture and data-flow analysis.
- Threat modeling and control mapping.
- Dependency and secret scanning of the owned repository.
- Bounded authentication and authorization tests.
- Bounded prompt-injection, RAG, agent, MCP, and API tests.
- Safe validation of suspected defects with synthetic data.
- Defensive patches and regression tests.
- Evidence capture under the evidence-handling rules.

## Prohibited activities

- Testing Onyx Cloud, public demos, or another person's deployment.
- Testing GitHub or the Codespaces platform as a service.
- Testing third-party APIs, connectors, identity providers, or MCP servers.
- Using real customer, employee, or production data.
- Using copied production tokens, credentials, backups, or logs.
- Social engineering, phishing real people, or physical attacks.
- Persistence, backdoors, malware, destructive tests, or data exfiltration.
- High-volume denial-of-service or uncontrolled resource consumption.
- Public disclosure of unresolved vulnerabilities.
- Any paid API, paid SaaS, or billable cloud action.

## Validity

This authorization starts only after approval. It ends when the owner revokes it or the scope changes.

A material scope change requires a new review and approval.

## Revocation

The owner can stop the assessment at any time. All tools and tests must stop immediately after revocation.

## Approval record

| Field | Required value |
| --- | --- |
| Decision | `APPROVED` or `REJECTED` |
| Approved scope version | Commit SHA containing this package |
| Authorizer | Ahmed |
| Approval date | `YYYY-MM-DD` |
| Conditions | List conditions or write `None` |

Decision: **PENDING**

