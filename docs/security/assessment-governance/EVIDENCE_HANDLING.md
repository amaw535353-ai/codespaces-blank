# Evidence Handling

## Private evidence location

The primary location is `$HOME/onyx-security-private/evidence` on Ahmed's local workstation.

This directory is outside every Git repository. Set directory permissions to `0700` and evidence files to `0600`.

Use `/tmp/onyx-evidence-staging` only for temporary Codespaces collection. Encrypt evidence before transfer and delete the staging copy.

## Encryption and access

Encrypt restricted and embargoed evidence with `age` to Ahmed's public recipient key.

Keep the private `age` identity outside GitHub and Codespaces. Only Ahmed may access unredacted evidence.

## Required case record

Record the case ID, UTC timestamp, assessor, authorization SHA, target SHA, and environment ID.

Also record the hypothesis, command, results, classification, evidence SHA-256, cleanup result, conclusion, and confidence.

Do not put secrets in recorded commands.

## Integrity and sharing

Hash each original with SHA-256. Do not edit it after hashing.

Create a separate sanitized copy for sharing. Log each transfer with sender, recipient, time, method, hash, and receipt status.

## Retention

- Delete temporary raw data at session end.
- Keep normal case evidence for 90 days after case closure.
- Keep embargoed evidence until 30 days after coordinated disclosure or case closure, whichever is later.
- Record every deletion or approved retention extension.

## Public repository

Only sanitized plans, reports, and regression tests may enter this repository.

Never commit private keys, raw traces, restricted data, or unresolved vulnerability details.
