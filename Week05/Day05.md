# Week05 — Day05: AI Security, Compliance & FinOps Deep Dive (CXO Edition)

## Objectives
- Build an **AI threat model** (data, model, prompt, supply chain) with mitigations.
- Stand up **FinOps guardrails**: budgets, alerts, **unit economics** per experiment/app.
- Extend controls: **key management, DLP, access**, **data residency** & **DPIA**.

## Lesson Summary
AI must be **safe and affordable**. Combine threat modeling with cost discipline so the roadmap is sustainable and auditable.

## Activities (⏱ 90 min)
- **Threat model (35m):** STRIDE-inspired + model risks (prompt injection, data exfiltration, drift).
- **FinOps (30m):** Budgets per app, alerts, **cost per token/call**; showbacks to teams.
- **Controls (25m):** Keys, RBAC, DLP, residency; **DPIA** template & triggers.

## Deliverables
- `security/ai_threat_model.md` (diagram, attack surfaces, mitigations)  
- `finance/finops_policy.md` (budgets, alerts, tagging, showback)  
- `governance/ai_cost_controls.md` (guardrails by environment)  
- `security/key_management_standards.md` (rotation, vaulting, scope)  
- `privacy/dpia_template.md` (when/how to run)

## Acceptance & QA
- **Cost alerts** configured; **unit cost baseline** per pilot app is documented.  
- Threat model lists **top 10 risks** with **owners** and **mitigation dates**.  
- **DPIA** template adopted; **residency rules** documented.

---

## Threat Model — Surfaces & Examples (excerpt)
| Surface        | Example Risk                          | Mitigation (Owner)                              |
|----------------|---------------------------------------|-------------------------------------------------|
| Data           | PII leakage in logs                   | Pseudonymization, log scrubbing (CISO)          |
| Prompt         | Prompt injection via user inputs      | Input sanitization, allow-list tools (CTO)      |
| Model          | Hallucination in regulated outputs    | Human-in-the-loop, guardrail checks (CPO)       |
| Supply Chain   | Model/package tampering               | SBOM, signature verification (SecOps)           |
| Access         | Over-permissive API keys              | RBAC, key vault, rotation policy (Platform Eng) |

## FinOps — Unit Economics (sample)
- **Cost per 1k tokens / per call / per document** (by environment).  
- **Monthly budget caps** with **alerts** at 70%/90% thresholds.  
- **Showback** by team/product; trend charts in finance dashboard.

## Control Extensions (checklist)
- ☐ Keys in HSM/managed vault; **90-day rotation** documented  
- ☐ DLP rules on inputs/outputs; policy exceptions approved by Legal  
- ☐ Residency enforced (region tags); cross-border transfers logged  
- ☐ Access reviews quarterly; break-glass keys with expiry and alerts

