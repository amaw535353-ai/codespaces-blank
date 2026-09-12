# Security Assessment Authorization

## Authorization status

**PENDING SEPARATE OWNER APPROVAL**

This file does not authorize active testing. The owner must approve an immutable scope commit separately.

## Purpose

The assessment supports defensive learning and improvement of a self-controlled Onyx Lite laboratory.

## Parties

| Role | Party | Authority |
| --- | --- | --- |
| System owner and authorizer | Ahmed | Controls the repository and laboratory |
| Assessor | Ahmed | Runs approved tests and makes safety decisions |
| AI assistant | ChatGPT Work | Assists under human control |
| Upstream maintainer | Onyx project | Receives possible upstream vulnerabilities privately |

Ahmed remains responsible for scope, interpretation, safety, cost, and disclosure decisions.

## Authorized assets and activities

Only assets listed in [SCOPE.md](SCOPE.md) are eligible for approval.

Eligible work includes passive review, threat modeling, bounded tests, defensive patches, regression tests, and evidence capture.

## Prohibited activities

- Testing GitHub, Codespaces, Onyx Cloud, public demos, upstream infrastructure, or third parties.
- Using real identities, data, tokens, credentials, backups, or logs.
- Starting external connectors, external MCP servers, or paid services.
- Starting Standard services or code execution without new approval.
- Social engineering, persistence, malware, destructive tests, or public disclosure of unresolved findings.

## Immutable approval process

1. Commit the complete scope, rules, limits, and laboratory configuration.
2. Record that commit's full SHA as the scope baseline.
3. Review the baseline without changing it.
4. Approve it with a signed Git tag. Put the approval details in the tag message.
5. Copy `tools/security_lab/approval.env.template` to `.security-lab/approval.env`.
6. Record the approved SHA and signed approval tag in that local runtime file.
7. Check out the approved SHA before active testing.

The signed tag message must use [APPROVAL_RECORD_TEMPLATE.md](APPROVAL_RECORD_TEMPLATE.md).

Changing the baseline creates a new SHA and invalidates its approval. Repeat the process after every material change.

## Validity and revocation

The separate approval must include start and end dates. The owner may revoke approval at any time.

All testing must stop immediately after expiry, revocation, or a material scope change.
