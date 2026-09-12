# Rules of Engagement

## Before each session

1. Verify the separate signed approval and approved scope SHA.
2. Check out the approved SHA.
3. Confirm the target is Onyx Lite.
4. Run `tools/security_lab/lab.sh verify`.
5. Confirm all identities, content, and credentials are synthetic.
6. Create a restore point.
7. Define the test hypothesis, expected result, and stop condition.

## Test execution

- Run one hypothesis at a time.
- Use the least privilege and impact needed.
- Send active requests from `lab_assessor` through Nginx.
- Record expected and actual results.
- Do not expand scope after an unexpected result.

## Mandatory limits

| Resource | Limit |
| --- | --- |
| Requests per second | 2 |
| Total requests per case | 100 |
| Concurrent requests | 5 |
| Active test duration | 60 seconds |
| Upload size | 1 MiB |
| Agent steps per run | 10 |
| Tool calls per run | 20 |
| Input tokens per run | 4,096 |
| Output tokens per run | 1,024 |
| Total tokens per run | 5,120 |
| API CPU and memory | 1 CPU; 1,536 MiB |
| Web CPU and memory | 0.5 CPU; 768 MiB |
| PostgreSQL CPU and memory | 0.5 CPU; 768 MiB |
| Nginx CPU and memory | 0.25 CPU; 256 MiB |
| Assessor CPU and memory | 0.25 CPU; 256 MiB |
| Remaining disk | At least 5 GiB and 20 percent free |
| External or paid calls | 0 |

Lower a limit when the laboratory shows stress. Raising any limit requires a new scope baseline and approval.

## Stop conditions

Stop when a target leaves scope, real data appears, cost may occur, or a limit approaches.

Stop when the system becomes unstable.

Also stop when an external request is possible, a destructive effect occurs, or authorization is uncertain.

## Cleanup

Stop the stack with `tools/security_lab/lab.sh stop`. Remove temporary data and confirm no non-private port remains.
