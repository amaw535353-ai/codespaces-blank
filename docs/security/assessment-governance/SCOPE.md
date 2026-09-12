# Assessment Scope

## Baseline

The initial target is **Onyx Lite** from `amaw535353-ai/codespaces-blank`.

Use these Compose files in order:

1. `deployment/docker_compose/docker-compose.yml`
2. `deployment/docker_compose/docker-compose.onyx-lite.yml`
3. `deployment/docker_compose/docker-compose.security-lab-active.yml`

## Active target assets

| Asset | Allowed access | Conditions |
| --- | --- | --- |
| Repository source | Read and change | Use a branch and pull request |
| Nginx and Onyx web | Port 3000 through private forwarding | Do not expose another port |
| Onyx API | Through Nginx only | No direct public exposure |
| PostgreSQL | Container network only | Synthetic data only |
| Local MCP mock | Local stdio only | Synthetic deterministic output |
| Lab assessor container | Active requests only | No secrets, mounts, or external network |

## Not active in the Lite baseline

- Redis.
- OpenSearch.
- MinIO.
- Indexing and inference model servers.
- Background workers and connectors.
- RAG indexing and retrieval.
- Code interpreter and agent-execution containers.
- External LLM, embedding, reranking, search, email, storage, identity, or MCP services.

Adding any item above is a material scope change. Update this package and obtain new approval first.

## Out of scope

- Onyx Cloud, `onyx.app`, public demos, and upstream infrastructure.
- GitHub and GitHub Codespaces as security-test targets.
- Another person's system, account, device, or data.
- Real accounts, credentials, databases, backups, logs, and customer data.
- Package registries as assessment targets.

## Network modes

**Setup mode** permits approved repository, package, and container-image downloads. Do not run active tests in this mode.

**Active-test mode** starts target services on `onyx_security_lab_active`. This Docker network is internal.

Only Nginx port 3000 binds to host loopback. Run active requests from `lab_assessor`.

## Data and time boundaries

Use only marked synthetic identities, documents, prompts, credentials, and events.

The separate approval defines the valid assessment dates. Review authorization before every session.
