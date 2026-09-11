# Data Classification

## Classes

| Class | Examples | Storage | Public repository |
| --- | --- | --- | --- |
| Public | Published source, standards, sanitized diagrams | Approved repository | Allowed |
| Internal lab | Test plans, benign configuration, harmless logs | Controlled lab storage | Only after review |
| Restricted synthetic | Fake tokens, tenant maps, raw synthetic test traces | Private evidence storage | Do not commit |
| Embargoed finding | Unresolved vulnerability details, proof, patch analysis | Encrypted private storage | Prohibited |
| Prohibited | Real credentials, customer data, production logs, copied sessions | Do not collect | Prohibited |

## Handling rules

- Label each evidence item with its class.
- Collect only the minimum data needed.
- Replace identifiers with synthetic labels.
- Redact secrets, tokens, cookies, IP addresses, and personal data.
- Encrypt restricted or embargoed evidence at rest and in transit.
- Limit access to the owner and approved recipients.
- Do not paste sensitive evidence into public AI tools or public issues.

## Synthetic data rules

- Use `.test` domains for email addresses.
- Prefix documents with `SYNTHETIC TEST DATA`.
- Use generated values that cannot authenticate to real services.
- Keep tenants distinct to support isolation tests.
- Never copy production formats when they contain real values.

## Retention and deletion

The owner records a retention period in each case file.

Delete temporary data after the session. Keep embargoed evidence only while disclosure needs it.

Record deletion or transfer in the evidence log.

## Accidental real-data exposure

1. Stop collection and testing.
2. Do not copy or inspect more data.
3. Isolate the evidence.
4. Notify the owner.
5. Delete it safely after the owner records the decision.
6. Review the boundary before testing resumes.

