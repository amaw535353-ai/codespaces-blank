# Assessment Scope

## Assessment target

The target is a self-controlled Onyx laboratory built from `amaw535353-ai/codespaces-blank`.

## In scope

| Asset | Allowed access | Conditions |
| --- | --- | --- |
| Repository source | Read and change | Use a branch and pull request |
| Local checkout | Full laboratory access | Use synthetic data only |
| Private Codespace | Full laboratory access | Owner-started; ports stay private |
| Onyx frontend | `localhost:3000` or private forwarded port | Route backend calls through the frontend |
| Onyx backend | Through the frontend proxy | No direct public exposure |
| PostgreSQL | Laboratory database only | No production backups |
| Redis and OpenSearch | Laboratory services only | No shared or production instance |
| Local mock LLM | Test requests only | No forwarding to external APIs |
| Local mock MCP server | Test tool calls only | Fake credentials only |
| Containers and logs | Laboratory resources only | Apply evidence and cleanup rules |

## Out of scope

- `onyx.app`, Onyx Cloud, and public Onyx demonstrations.
- `onyx-dot-app/onyx` infrastructure and maintainer accounts.
- GitHub.com and GitHub Codespaces service infrastructure.
- Another organization or person's system, account, device, or data.
- Real external LLM, embedding, reranking, search, email, storage, or MCP services.
- Real Google Drive, Slack, Microsoft, or identity-provider accounts.
- Production databases, backups, logs, credentials, or customer data.
- Package registries and download services as security-test targets.
- Third-party integrations named by the application.

## Network boundary

Keep services on loopback, the container network, or private port forwarding.

Do not make a laboratory port public. Do not scan public addresses or adjacent infrastructure.

Outbound model and connector traffic is prohibited. A local proxy to an external API remains external.

Dependency downloads need separate owner approval. They are setup actions, not security-test targets.

## Data boundary

Use only synthetic identities and content. Use reserved domains such as `.test` for fake email addresses.

Example user: `alice@tenant-alpha.test`.

Example document: `Tenant Alpha confidential merger plan - synthetic test document`.

## Time boundary

No standing authorization exists. Approval applies only while this scope remains unchanged.

Review authorization before each assessment session.

## Scope-change process

Stop when a new host, service, connector, data source, credential, or technique appears.

Record the proposed change. Assess its risk. Obtain owner approval before continuing.

