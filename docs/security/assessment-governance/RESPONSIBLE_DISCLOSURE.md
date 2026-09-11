# Responsible Disclosure Plan

## Purpose

This plan applies when local work may reveal a genuine Onyx vulnerability.

It does not grant permission to test upstream infrastructure or another deployment.

## Disclosure route

The repository's `SECURITY.md` requires private reporting for Onyx vulnerabilities.

Use Onyx GitHub Private Vulnerability Reporting:

<https://github.com/onyx-dot-app/onyx/security/advisories/new>

Do not use public issues, pull requests, or discussions for unresolved security findings.

## Process

1. Stop active testing after the minimum safe validation.
2. Confirm the result on the approved laboratory only.
3. Remove secrets, personal data, and unrelated content.
4. Determine whether the issue is local configuration, fork-only code, or upstream code.
5. Prepare a minimal private report with reproducible synthetic evidence.
6. Submit the report through the upstream private channel when applicable.
7. Record the private report identifier and submission time.
8. Follow maintainer requests only when they remain safe and authorized.
9. Coordinate remediation and publication with the maintainer.
10. Publish sanitized portfolio material only after approval or public remediation.

## Report content

- Concise title and affected component.
- Onyx version or commit SHA.
- Deployment type and relevant safe configuration.
- Preconditions and required privileges.
- Reproduction steps using synthetic data.
- Expected and actual results.
- Demonstrated impact and affected security property.
- Minimal logs, requests, screenshots, or test code.
- Suggested mitigation and regression test, when available.
- Researcher contact and credit preference.

## Timing

The existing Onyx policy says typical investigations can take up to 90 days.

This is not an automatic public-disclosure deadline. Agree on timing with the maintainers.

Escalate silence through the same private channel. Do not publish solely because time passed.

## Publication rules

Before publication, confirm all conditions:

- The maintainer approved disclosure, or the issue is already public and fixed.
- The published version does not expose users to unnecessary risk.
- All evidence is sanitized.
- No token, account, personal data, or private communication appears.
- The report clearly separates fact, impact, limitation, and opinion.
- The owner approved the final text.

## Non-upstream findings

Report third-party defects to the relevant vendor under its policy.

Do not use Onyx channels for third-party defects. Do not test the third party without authorization.

