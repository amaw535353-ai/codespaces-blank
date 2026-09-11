# Assessment Approval Checklist

Active testing stays blocked until every mandatory item is complete.

## Mandatory authorization checks

- [ ] The owner changed the authorization decision to `APPROVED`.
- [ ] The approval record names the exact authorization commit SHA.
- [ ] The assessor controls every in-scope target.
- [ ] No public or third-party target is included.
- [ ] The environment identifier and target commit are recorded.

## Mandatory safety checks

- [ ] External model APIs and production connectors are disabled.
- [ ] No local proxy forwards requests to an external provider.
- [ ] Test services use loopback, container networking, or private forwarding.
- [ ] All identities, documents, prompts, credentials, and logs are synthetic.
- [ ] No paid API, paid SaaS, or billable cloud action is possible.
- [ ] Request, time, size, token, and concurrency limits are configured.
- [ ] Restore and cleanup steps were tested.
- [ ] Stop conditions are visible to the assessor.

## Mandatory evidence checks

- [ ] The case identifier and UTC start time are recorded.
- [ ] Expected results exist before each active test.
- [ ] Private evidence storage is available.
- [ ] Redaction and SHA-256 procedures are ready.
- [ ] No unresolved finding will enter this public repository.

## Mandatory disclosure checks

- [ ] The assessor reviewed the repository's root `SECURITY.md`.
- [ ] The upstream private-reporting link is available.
- [ ] Public issues, pull requests, and discussions are excluded for unresolved findings.
- [ ] Publication requires owner and maintainer coordination.

## Session decision

| Field | Value |
| --- | --- |
| Session ID |  |
| Authorization commit SHA |  |
| Target commit SHA |  |
| Environment ID |  |
| Decision | `GO` or `NO-GO` |
| Decision owner | Ahmed |
| UTC time |  |
| Notes |  |

Default decision: **NO-GO**

