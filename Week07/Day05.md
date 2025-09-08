# Week07 — Day05: Productization Patterns & Trust UX (Copilots that Stick)

*Save as:* `wk07/day05_productization_trust_ux.md`

> **CXO Lens (Deloitte-grade):** Adoption follows **trust**. We productize AI with **explainability, reversibility, and safety**—so users understand *why* a result appeared, can *change* it, and know *what happens next*. Feedback isn’t a suggestion box; it’s a **data pipeline** that improves the system.

---

## Why this matters (board rationale)

* **Risk → Reliability:** Clear sources, confidence, and audit trails lower operational and legal risk.
* **Adoption → ROI:** Trust artifacts (citations, change logs) correlate with higher daily active use and task completion.
* **Learning Loop:** Structured feedback routed to evals and training datasets compounds quality gains.

---

## Objectives (today)

* Establish **trust affordances**: citations, “why this?”, version labels, freshness indicators, change logs.
* Design **fallbacks and error states** that keep users productive (never dead-end).
* Instrument **feedback** (thumbs, comments, correction replays) into labeled datasets and weekly eval reviews.

---

## Lesson Summary

Good AI UX is deliberately **boring**: consistent patterns, visible guardrails, and safe exits. Every surface must show **source, status, and next step**. When users correct output, we **capture intent**, **label it**, and **close the loop** in a visible way.

---

## Activities (⏱ 75–90 minutes)

### 1) Pattern Library (25m)

Select and standardize components (props, states, events):

* **Retrieval Badge** — shows # of sources used (e.g., “3 sources”).
* **Citation Panel** — expandable list with title, snippet highlight, and open-in-context.
* **“Why this?” Explainer** — short rationale (retrieval terms, filters, model).
* **Source Freshness** — timestamp/badge (e.g., “Indexed 6h ago”).
* **Version & Model Label** — prompt/template version and model build.
* **Ask to Expand/Refine** — chip actions that guide next prompt safely.
* **Flag to Human** — routes to queue with metadata (PII-safe).

### 2) Error & Fallback Playbook (20m)

Map common failure modes → clear copy + actionable CTA:

* **Timeout / Partial Results** → “Show partial + Retry”
* **Low Confidence** → “Preview sources + Ask to validate”
* **Restricted Data / Privacy Block** → “Request access” or “Use redacted view”
* **Empty Retrieval** → “Broaden scope / Change filters / Switch to Search”

### 3) Feedback Wiring (20m)

Define event schema and routing:

* **Thumbs / Star Ratings** with reason codes
* **Inline Edit Capture** (original vs. corrected text diff)
* **Comment Categories** (accuracy, tone, missing source, policy)
* **Review SLAs** (triage owner, time-to-disposition)

### 4) Copy & Tone (10–25m)

Draft microcopy patterns that set expectations without overpromising:

* Confidence phrasing, groundedness cues, safe language for limitations.
* Inclusive, accessible language (plain English, 8th–10th grade reading level).

---

## Deliverables

* `wk07/ux/patterns.md` — component specs (props, states, events, examples).
* `wk07/ux/error_playbook.md` — failure modes → copy, CTA, telemetry.
* `wk07/ux/feedback_to_evals.md` — event schema, routing, labels, SLAs, dashboards.
* `wk07/ux/microcopy.md` — approved phrases for confidence, limits, and guidance.

---

## Acceptance & QA

* Each copilot surface shows **sources, confidence**, **last updated**, and **version/model**.
* Error states include **useful next steps** (retry, refine, human route) and never dead-end.
* Feedback events appear in **weekly eval reviews** with owner, label, disposition, and evidence link.
* **Accessibility**: keyboard navigable, ARIA for expandable panels, color contrast AA+.

---

## Trust Components (Checklist)

* [ ] **Citation panel** with linkouts and highlighted snippets
* [ ] **“Why this?”** explainer (retrieval terms, filters, model)
* [ ] **Version & model** labels (prompt v, model build/date)
* [ ] **Source freshness** indicator (indexed\_at)
* [ ] **Confidence band** (High/Med/Low + what to do next)
* [ ] **Change log** (inputs, edits, approvals)
* [ ] **Report/flag to human** (queue + SLA)

---

## Pattern Specs (excerpt)

**CitationPanel**

```
props:
  sources: [{id, title, url, snippet, indexed_at}]
  highlight_terms: [string]
  collapsed: boolean
events:
  onOpen, onCopyCitation, onOpenSource
telemetry:
  citation_panel_opened, source_clicked, copy_citation
```

**WhyThisExplainer**

```
props:
  retrieval_terms: [string]
  filters_applied: [{field, op, value}]
  model: {name, version}
  prompt_template_version: string
events:
  explainer_opened
telemetry:
  explainer_opened, explainer_terms_copied
```

**ConfidenceTag**

```
props:
  level: "high" | "medium" | "low"
  reasons: [“few_sources”, “stale_sources”, “low_similarity”, “long_generation”]
ui:
  color + icon; tooltip explains reasons and next actions
```

---

## Error & Fallback Copy (ready-to-ship)

* **Timeout:**
  *“We generated partial results before timing out. You can Retry, Narrow the scope, or Send to a human for completion.”*

* **Low Confidence:**
  *“I’m not fully confident in this draft. Review sources or Ask me to validate specific claims.”*

* **Restricted:**
  *“This content requires additional permissions. Request access or continue with redacted sources.”*

* **No Results:**
  *“I couldn’t find relevant sources. Broaden your filters, change the timeframe, or switch to Search.”*

CTAs: **Retry • Review sources • Refine query • Send to human • Request access**

---

## Feedback → Evals (pipeline)

**Event schema (JSON)**

```json
{
  "event_id": "fbk_2025_09_07_001",
  "ts": "2025-09-07T14:02:11Z",
  "user_id": "u_123",
  "use_case_id": "claims_draft_v2",
  "model": "gpt-x-2025-08-15",
  "prompt_version": "p_v17",
  "signal": "thumbs_down",
  "reason_codes": ["missing_citation", "factual_error"],
  "original_text_ref": "obj_abc",
  "corrected_text_ref": "obj_def",
  "pii_flag": false,
  "ticket_url": "https://tracker/INC-1234"
}
```

**Routing rules**

* `thumbs_down` with `factual_error` → **evals\_catalog:** groundedness tests
* `missing_citation` → retrieval depth/k tuning + re-rankers
* `tone` → prompt template library updates
* All → weekly review board with **owner + SLA**

**SLA**

* Triage in **24h**, disposition in **5 business days**, change log updated.

---

## Metrics (add to dashboards)

* **Adoption:** DAU/WAU, tasks completed/session, repeat usage
* **Trust:** citation\_panel\_opened rate, source\_click\_through, confidence mix
* **Quality:** grounded answer rate, hallucination rate, flagged items/time
* **Speed:** p95 latency, time-to-first-draft, correction time
* **Learning:** labeled feedback/week, time-to-fix, regression escape rate

---

## Accessibility & Privacy

* Keyboard and screen-reader support for all expandable/interactive elements.
* Redact/blur PII in previews by default; explicit toggle for permitted roles.
* Watermark generated content (in metadata) and display **“AI-assisted”** where required.

---

## Reference Snippets

**Telemetry (TypeScript interface)**

```ts
type FeedbackEvent = {
  event_id: string;
  ts: string;
  user_id: string;
  use_case_id: string;
  model: string;
  prompt_version: string;
  signal: "thumbs_up" | "thumbs_down" | "edit" | "comment";
  reason_codes?: string[];
  original_text_ref?: string;
  corrected_text_ref?: string;
  pii_flag?: boolean;
  ticket_url?: string;
};
```

**Server: route feedback to evals**

```python
def route_feedback(evt: dict):
    if "factual_error" in evt.get("reason_codes", []):
        queue("evals.groundedness").publish(evt)
    if "missing_citation" in evt.get("reason_codes", []):
        queue("retrieval.tuning").publish(evt)
    if evt.get("signal") == "thumbs_up":
        dataset("golden/positives").append(evt)
```

**Design tokens (JSON)**

```json
{
  "color": {
    "confidenceHigh": "#1E8E3E",
    "confidenceMed": "#F9AB00",
    "confidenceLow": "#D93025"
  },
  "radius": { "sm": 6, "md": 10 },
  "elevation": { "panel": "shadow-md" }
}
```

---

## RACI (snapshot)

| Workstream               | R (Doer)       | A (Accountable) | C (Consulted)   | I (Informed) |
| ------------------------ | -------------- | --------------- | --------------- | ------------ |
| Pattern library          | Design Systems | VP Product      | Platform, Legal | Org          |
| Error/fallback playbook  | Product        | VP Product      | SRE, Security   | Org          |
| Feedback → evals routing | Data Platform  | Head of Data    | Applied Science | Org          |
| Microcopy                | UX Writing     | VP Product      | Legal, Brand    | Org          |

---

## Day-end checklist

* [ ] Pattern specs approved and merged to `design-system`
* [ ] Error/fallback playbook live with copy + CTA + telemetry
* [ ] Feedback events flowing to eval queues; dashboard shows signals by reason code
* [ ] Microcopy style guide published (confidence, limits, actions)
* [ ] Accessibility checks passed (contrast, keyboard nav, ARIA)

---

## What “great” looks like

* **Transparent by default:** Every answer shows sources, freshness, and model/version.
* **Never stuck:** Users always have a productive next step (retry, refine, human).
* **Closed loop:** A user correction shows up in the next week’s eval review—with a visible change log.

