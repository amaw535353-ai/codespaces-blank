# Evidence Handling

## Required record

Create one case record for each test or finding.

Record these fields:

- Case identifier.
- UTC timestamp.
- Assessor.
- Authorization commit SHA.
- Target commit SHA and environment identifier.
- Test hypothesis.
- Exact command or request, with secrets removed.
- Expected result.
- Actual result.
- Evidence classification.
- Hash for material evidence files.
- Cleanup and restore result.
- Conclusion and confidence.

## Collection

- Capture only evidence needed to prove or disprove the hypothesis.
- Prefer text logs and deterministic requests over screenshots.
- Keep original timestamps and file metadata when useful.
- Mark all synthetic tenant, user, and document identifiers.
- Redact tokens, cookies, credentials, personal data, and unrelated content.

## Integrity

Hash stored evidence with SHA-256. Record the hash in the case file.

Do not edit the original after hashing. Create a separate sanitized copy for sharing.

## Storage

This public repository may contain sanitized test plans and fixed regression tests.

It must not contain restricted synthetic traces or embargoed findings.

Store sensitive material in encrypted, access-controlled private storage.

## Evidence log template

| Field | Value |
| --- | --- |
| Case ID | `ONYX-YYYY-NNN` |
| Timestamp | `YYYY-MM-DDTHH:MM:SSZ` |
| Authorization SHA |  |
| Target SHA |  |
| Environment |  |
| Hypothesis |  |
| Expected |  |
| Actual |  |
| Classification |  |
| Evidence SHA-256 |  |
| Cleanup result |  |
| Conclusion |  |

## Transfer and deletion

Log every transfer of embargoed evidence. Use the recipient's approved private channel.

When deletion is due, remove all copies that the owner controls. Record the deletion date.

