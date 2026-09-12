# Assessment Approval Checklist

Active testing stays blocked until every mandatory item is complete.

## Authorization and scope

- [ ] The scope baseline exists as an immutable full commit SHA.
- [ ] A signed Git tag approves that SHA.
- [ ] The approval includes start and end dates.
- [ ] The checked-out commit equals the approved scope SHA.
- [ ] The deployment is Onyx Lite.
- [ ] Standard services and code execution remain disabled.
- [ ] The assessor controls every in-scope target.

## Network and credentials

- [ ] Setup mode completed before active testing.
- [ ] The active target network reports `Internal=true`.
- [ ] `.mcp.json` contains only the local stdio mock.
- [ ] Target containers receive no GitHub, Claude, AWS, SSH, cloud, or user credentials.
- [ ] Target services do not load an environment file.
- [ ] Active requests run from `lab_assessor`.
- [ ] Only port 3000 is forwarded and every forwarded port is private.

## Safety and evidence

- [ ] All identities, documents, prompts, credentials, and logs are synthetic.
- [ ] Request, time, size, step, tool, token, CPU, memory, process, and disk limits are active.
- [ ] Restore and cleanup steps were tested.
- [ ] The private evidence location exists with owner-only access.
- [ ] The `age` private identity remains outside GitHub and Codespaces.
- [ ] Redaction and SHA-256 procedures are ready.

## Cost and disclosure

- [ ] The Codespaces zero-cost budget gate passed, or Codespaces is not used.
- [ ] No paid API, SaaS, or billable cloud action is possible.
- [ ] The upstream private-reporting channel is available.
- [ ] No unresolved finding will enter this public repository.

## Session decision

| Field | Value |
| --- | --- |
| Session ID |  |
| Approved scope SHA |  |
| Signed approval tag |  |
| Environment ID |  |
| Decision | `GO` or `NO-GO` |
| Decision owner | Ahmed |
| UTC time |  |
| Notes |  |

Default decision: **NO-GO**
