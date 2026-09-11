# Rules of Engagement

## Before each session

1. Confirm authorization status is `APPROVED`.
2. Record the repository commit and environment identifier.
3. Confirm all target services belong to the approved laboratory.
4. Confirm external providers and connectors are disabled.
5. Confirm all users, documents, and credentials are synthetic.
6. Create a restore point for changed data or configuration.
7. Define the expected result and stop condition for each test.

## Test execution

- Prefer passive review before active testing.
- Run one test hypothesis at a time.
- Use the least privilege and least impact needed.
- Send backend requests through the Onyx frontend proxy.
- Keep tests reproducible and bounded.
- Record expected and actual results.
- Do not expand scope after an unexpected result.

## Default technical limits

| Resource | Default limit |
| --- | --- |
| Concurrent test requests | 10 |
| Load-test duration | 60 seconds |
| Test upload size | 1 MB |
| Test tenants | 2 synthetic tenants |
| Test accounts | 5 synthetic accounts |
| Agent or tool recursion | Disabled or fixed finite depth |
| External API calls | 0 |
| Paid service calls | 0 |

Lower a limit when the laboratory shows stress. Raising a limit requires a recorded owner decision.

## Permitted techniques

- Manual source and configuration review.
- Static analysis and dependency review.
- Controlled API requests against the laboratory.
- Synthetic access-control matrix tests.
- Controlled prompt and retrieved-document injection tests.
- Safe agent and MCP permission tests using mocks.
- Bounded file-upload and input-validation tests.
- Regression tests for verified fixes.

## Prohibited techniques

- Internet-wide scanning or public-target reconnaissance.
- Credential stuffing, real password reuse, or account takeover.
- Real-person phishing or social engineering.
- Unbounded fuzzing, recursion, tokens, storage, or concurrency.
- Resource-exhaustion tests that risk service or host failure.
- Destructive database, filesystem, or container operations without a tested restore path.
- Data extraction beyond the minimum synthetic proof.
- Installing persistence, backdoors, or remote-control software.

## Stop conditions

Stop immediately if any condition occurs:

- A target is outside the approved asset list.
- A request may reach an external service.
- Real personal, customer, employee, or production data appears.
- A real credential, session, token, or secret appears.
- Cost may be incurred.
- Resource use approaches a configured limit.
- The application, host, or database becomes unstable.
- A test produces destructive or unexpected effects.
- The next action's authorization is uncertain.
- A possible genuine upstream vulnerability is confirmed.

## Incident action

1. Stop the test.
2. Preserve the minimum necessary evidence.
3. Isolate affected laboratory services.
4. Rotate any exposed laboratory credential.
5. Restore the known-good state when safe.
6. Record the event and owner decision.

## Cleanup

- Stop and remove temporary containers.
- Delete synthetic credentials and temporary datasets.
- Restore changed configuration.
- Verify no public port remains open.
- Keep only approved evidence.
- Record cleanup completion.

