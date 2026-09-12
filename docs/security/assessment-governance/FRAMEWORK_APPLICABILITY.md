# Framework Applicability

This register supports risk decisions. It does not claim compliance or certification.

Record the exact version, access date, download URL, and SHA-256 for each retained artifact.

| Resource | Application | Primary evidence |
| --- | --- | --- |
| NIST AI RMF 1.0 | Govern, map, measure, and manage AI risks | Risk register and treatment decisions |
| NIST AI RMF Playbook | Select practical actions for each AI RMF function | Action backlog and owners |
| NIST AI 600-1 GenAI Profile | Identify GenAI risks and actions | Risk scenarios and requirements |
| NIST SP 800-218 SSDF 1.1 | Review secure development and response | Repository, review, and test evidence |
| NIST SP 800-218A | Apply relevant AI development tasks with SSDF 1.1 | AI dependency, data, and test records |
| OWASP GenAI LLM Top 10 2026 | Create LLM application hypotheses | Risk-to-test matrix |
| OWASP Agentic Applications Top 10 2026 | Create agent and tool hypotheses | Agent risk records |
| OWASP Agent Control Standard | Assess agent visibility and runtime control | Agent inventory and control evidence |
| OWASP GenAI Industry Framework Crosswalk | Map GenAI risks to broader controls | Crosswalk and gap record |
| MITRE ATLAS | Identify AI adversary tactics and techniques | Threat model and test hypotheses |
| MITRE SAFE-AI | Select and assess threat-informed controls | Control plan and residual risk |
| Upstream Onyx `SECURITY.md` | Control private reporting and publication | Disclosure case record |

## Baseline decisions

- Use AI RMF 1.0 until NIST publishes a replacement baseline.
- Use finalized SSDF 1.1. Treat draft revisions as informative.
- Use SP 800-218A with SP 800-218, not alone.
- Record exact OWASP artifact versions because these resources change.
- Use SAFE-AI with MITRE ATLAS threat knowledge.

## Official references

- NIST AI RMF: <https://www.nist.gov/itl/ai-risk-management-framework>
- NIST AI RMF Playbook: <https://airc.nist.gov/airmf-resources/playbook/>
- NIST AI 600-1: <https://doi.org/10.6028/NIST.AI.600-1>
- NIST SP 800-218: <https://doi.org/10.6028/NIST.SP.800-218>
- NIST SP 800-218A: <https://doi.org/10.6028/NIST.SP.800-218A>
- OWASP LLM Top 10 2026: <https://genai.owasp.org/resource/owasp-genai-llm-top-10-2026/>
- OWASP Agentic Top 10 2026: <https://genai.owasp.org/resource/owasp-top-10-for-agentic-applications-for-2026/>
- OWASP Agent Control Standard: <https://genai.owasp.org/resource/agent-control-standard-acs/>
- OWASP Industry Crosswalk: <https://genai.owasp.org/resource/genai-security-industry-framework-crosswalk/>
- MITRE ATLAS: <https://atlas.mitre.org/>
- MITRE SAFE-AI: <https://atlas.mitre.org/pdf-files/SAFEAI_Full_Report.pdf>
- Upstream Onyx security policy: <https://github.com/onyx-dot-app/onyx/security>
