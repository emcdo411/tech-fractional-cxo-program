# Week07 — Day05: Productization Patterns & Trust UX (Copilots that Stick)

> **CXO Lens:** Adoption follows **trust**. We design UI patterns that make AI **explainable, revisable, and safe**—with feedback loops that improve over time.

---

## Objectives
- Establish **trust affordances**: citations, “why this?”, version labels, change logs.
- Design **fallbacks** and **error states** that keep users productive.
- Instrument **feedback** (thumbs, comments, correction replays) into evals.

---

## Lesson Summary
Good AI UX is boring in the best way: consistent patterns, visible guardrails, and clear “safe exits.” We turn users’ corrections into training signals.

---

## Activities (⏱ 75–90 minutes)
1) **Pattern Library (25m)**  
   - Select patterns: Retrieval badge, Citation panel, Source preview, “Ask to expand,” “Flag to human.”
2) **Error Playbook (20m)**  
   - Timeouts, low confidence, restricted data, privacy blocks → **copy + CTA**.
3) **Feedback Wiring (20m)**  
   - Route user feedback to datasets/evals with **labels** and **review SLAs**.
4) **Copy & Tone (10–25m)**  
   - Write microcopy that sets expectations without overpromising.

---

## Deliverables
- `wk07/ux/patterns.md` — components + when to use.
- `wk07/ux/error_playbook.md` — states, messages, fallbacks.
- `wk07/ux/feedback_to_evals.md` — routing, labels, SLAs, dashboards.

---

## Acceptance & QA
- Each copilot surface shows **sources, confidence**, and **last updated**.
- Error states provide **useful next steps** and do not dead‑end.
- Feedback appears in **weekly eval reviews** with owner + disposition.

---

## Trust Components (Checklist)
- [ ] Citation panel with linkouts  
- [ ] “Why this?” explainer  
- [ ] Version & model label  
- [ ] Source freshness indicator  
- [ ] Report/flag to human

