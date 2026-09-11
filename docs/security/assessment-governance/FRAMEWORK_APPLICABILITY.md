# Framework Applicability

This register supports risk decisions. It is not a compliance or certification claim.

Framework status was checked on 2026-09-11. Review it when an official source changes.

| Resource | Application to this assessment | Primary evidence |
| --- | --- | --- |
| NIST AI RMF 1.0 | Govern, map, measure, and manage Onyx AI risks | Risk register, owners, metrics, treatment decisions |
| NIST AI 600-1 GenAI Profile | Identify GenAI risks in prompts, retrieval, models, agents, and outputs | Risk scenarios and control tests |
| NIST SP 800-218 SSDF 1.1 | Review secure development and vulnerability response | Repository controls, reviews, tests, and release evidence |
| NIST SP 800-218A | Apply AI-specific secure-development tasks where Onyx uses AI components | AI dependency, data, model, and test records |
| OWASP GenAI LLM Top 10 2026 | Create application risk hypotheses and requirements | Risk-to-test matrix |
| OWASP Agentic Applications Top 10 2026 | Create agent, tool, identity, memory, and failure hypotheses | Agent risk and control records |
| OWASP Agent Control Standard | Assess visibility, traceability, permissions, and runtime control | Agent inventory and enforcement evidence |
| OWASP GenAI Security Industry Framework Crosswalk | Connect GenAI risks to wider controls | Master crosswalk and gap record |
| MITRE SAFE-AI | Decompose the system and select controls using threat knowledge | Architecture, threat model, and residual risk |
| Onyx `SECURITY.md` | Control private reporting and publication | Disclosure case record |

## Baseline decisions

- Use NIST AI RMF 1.0 until NIST publishes a replacement baseline.
- Use NIST AI 600-1 as the GenAI companion profile.
- Use finalized SSDF 1.1 for the secure-development baseline.
- Treat SSDF 1.2 draft material as informative until finalized.
- Apply SP 800-218A selectively because Onyx is an AI application.
- Record the exact version and access date for each OWASP artifact.
- Use MITRE SAFE-AI with MITRE ATLAS threat knowledge.

## Official references

- NIST AI RMF 1.0: <https://doi.org/10.6028/NIST.AI.100-1>
- NIST AI 600-1: <https://doi.org/10.6028/NIST.AI.600-1>
- NIST SP 800-218: <https://doi.org/10.6028/NIST.SP.800-218>
- NIST SP 800-218A: <https://doi.org/10.6028/NIST.SP.800-218A>
- OWASP LLM Top 10 2026: <https://genai.owasp.org/resource/owasp-genai-llm-top-10-2026/>
- OWASP Agentic Top 10 2026: <https://genai.owasp.org/resource/owasp-top-10-for-agentic-applications-for-2026/>
- OWASP Agent Control Standard: <https://genai.owasp.org/resource/agent-control-standard-acs/>
- OWASP Industry Crosswalk: <https://genai.owasp.org/resource/genai-security-industry-framework-crosswalk/>
- MITRE SAFE-AI: <https://atlas.mitre.org/pdf-files/SAFEAI_Full_Report.pdf>
- Onyx security policy: <https://github.com/onyx-dot-app/onyx/security>

