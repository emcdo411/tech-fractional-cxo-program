# Week04 — Day06: Pre-Brief & Talk Track (CXO Edition)

## Objectives

* Draft a **pre-brief** for the Mentor/Chair that clarifies **goals, constraints, draft decisions**, and likely sensitivities.
* Craft a crisp **5-point talk track** that lands one **clear, time-bound ask** with metrics and guardrails.
* Anticipate **Q\&A** and agree on **what good looks like** before the meeting.

## Lesson Summary

High-performing boards hate surprises. A 1-page **pre-brief** aligns the Chair and sets guardrails; a tight **talk track** makes the meeting decisive. Use a message map (Headline → 3 Proofs → Ask), anchor on data already in the pre-reads, and pre-wire potential concerns.

## Activities (60–75 min)

1. **Message map (10 min):** Headline outcome, three proofs, single ask.
2. **Pre-brief draft (25 min):** Fill goals, constraints, draft decision(s), stakeholders, risks, evidence links. Circulate to Mentor/Chair.
3. **Talk track (20 min):** Build 5-point flow (below). Add time-bound ask + metrics.
4. **Anticipate Q\&A (10 min):** Write five tough questions with 1–2 line answers.
5. **Rehearse (10 min):** 90-sec / 60-sec / 30-sec versions.

## Deliverables

* **Required**

  * `board/prebrief_notes.md`
  * `board/talk_track.md`
* **Recommended**

  * `board/qna_bank.md`
  * `board/stakeholder_map.csv`
  * `board/slide_outline.md` (if you present slides)

## Acceptance & QA (evidence-based)

* **Pre-brief** lists **goals, constraints (incl. non-negotiables), draft decisions**, stakeholders, risks/mitigations, and evidence links.
* **Talk track** has **exactly five points** and a **clear, time-bound ask** (dates/\$/limits/guardrails) plus 30/60/90-sec variants.
* Includes **owner** for each next step and points back to the **Decision Log ID**.

---

## Drop-in: `board/prebrief_notes.md`

```markdown
# Pre-Brief Notes — <Topic / Meeting Date>
**Owner:** <Your Name, Title> | **Mentor/Chair:** <Name> | **Decision Log ID:** <DEC-YYYY-NNN>  
**Objective:** Align on narrative, boundaries, and desired outcome before the board meeting.

## 1) Goals (Top 3)
1. <Outcome 1> (e.g., secure approval to pilot vendor X)
2. <Outcome 2> (e.g., confirm budget envelope NTE $___)
3. <Outcome 3> (e.g., agree risk guardrails & success metrics)

## 2) Draft Decision(s)
- **Proposed:** <Decision statement in one sentence>  
- **Why now:** <Trigger/urgency>  
- **Alternatives considered:** <A/B (1 line each)>

## 3) Constraints & Non-Negotiables
| Type         | Constraint / Non-Negotiable                     | Source/Owner    |
|--------------|--------------------------------------------------|-----------------|
| Financial    | Budget NTE $<amount>                            | CFO             |
| Compliance   | Data residency: <region>; DPIA required         | Legal/CISO      |
| Timeline     | Board pack dates; GA by <YYYY-MM-DD>            | PMO             |
| Risk         | High-risk AI release needs Cttee approval       | Risk & AI Cttee |
| People       | Hiring freeze in <function/region>              | HR              |

## 4) Stakeholders (Influence × Stance)
| Stakeholder | Role / Vote | Stance (For/Neutral/Against) | What They Need to Hear | Pre-wire Owner |
|-------------|-------------|-------------------------------|------------------------|----------------|
| <Name>      | <Board/Audit/etc.> | <…>                  | <Benefit, mitigation>  | <You/CoS>     |

## 5) Risks & Mitigations
- **Risk 1:** <summary> — **Mitigation:** <action> — **Owner:** <name>  
- **Risk 2:** …  
- **Risk 3:** …

## 6) Evidence & Links (pre-reads already posted)
- KPI pack: <link>  
- Decision memo: <link>  
- Security/Legal review: <link>  
- Budget model: <link>

## 7) Agenda & Timeboxes (proposed)
- 0:00–0:10 — Context & KPI deltas  
- 0:10–0:20 — Options & recommendation  
- 0:20–0:30 — Q&A, risks, guardrails  
- 0:30–0:35 — **Decision & next steps**

## 8) Success Criteria (for this meeting)
- Clear decision recorded in minutes & Decision Log  
- Owners and dates assigned for follow-ups  
- No unresolved blockers or surprise objections
```

---

## Drop-in: `board/talk_track.md`

```markdown
# Talk Track — <Topic> (Five Points + Clear Ask)
**Time:** 5–7 min | **Owner/Presenter:** <Name> | **Decision Log ID:** <DEC-YYYY-NNN>

> **Message Map:** <Headline (one sentence)> → <Proof 1> • <Proof 2> • <Proof 3> → **Ask**

## 1) Headline (10–15s)
One-line outcome & why now.  
> Example: “We can cut analyst toil by 10 hrs/week and hit board-pack SLAs by adopting <X> now.”

## 2) Progress vs Plan (60s)
- What changed since last update (green/yellow/red).  
- Key KPI deltas (call out the 2 that matter).  
- Evidence link: <KPI pack / appendix>

## 3) Options & Trade-offs (60–90s)
- Option A (recommended): <value + speed>  
- Option B: <cheaper/flex; risk>  
- Option C: <do nothing/slow; risk>  
- Why A wins for our constraints (tie back to pre-reads).

## 4) Risks & Guardrails (45–60s)
- Top risks (max 3) with **mitigations + owners**.  
- Compliance/security guardrails already in plan.

## 5) **Decision Request** (30–45s) — *time-bound, specific*
- **Approve:** <policy/vendor/investment>  
- **Budget (NTE):** $<amount> for <term>  
- **Dates/Milestones:** <contract by … / pilot by … / GA by …>  
- **Guardrails:** <reporting, exit criteria, review gates>  

---

### Q&A Pivots (anticipate 5 tough questions)
1) **Cost volatility?** — “We’ve budget caps + usage alerts; monthly report to ELT; exit to B if two months <98% reliability.”  
2) **Vendor risk / lock-in?** — “Contract has termination for convenience after pilot; hedge with <alt> for niche sources.”  
3) **Security & privacy?** — “DPA executed; PII minimized; access via SSO; audit logs reviewed monthly.”  
4) **Execution capacity?** — “Owner <name>; squad staffed; critical path clear; burndown in appendix.”  
5) **Why now?** — “Board-pack timeliness and AI evaluation depend on this by <date>; delay costs X hours/week.”

### Variants
- **90-second version:** Headline → 1 KPI delta → Option A vs B → Risks (1) → Ask.  
- **60-second version:** Headline → Proof → Ask.  
- **30-second version:** “We can achieve <result> by <date> with <A>. Risks mitigated via <guardrail>. Approve $<NTE> today to start.”

### Next Steps (if approved)
- Contract by <YYYY-MM-DD> — **Owner:** <Name>  
- Pilot complete by <YYYY-MM-DD> — **Owner:** <Name>  
- GA & first KPI report by <YYYY-MM-DD> — **Owner:** <Name>

**Links:** Pre-reads · Decision memo · KPI pack · Security/Legal review
```

---

## (Optional) Drop-ins

### `board/qna_bank.md`

```markdown
# Q&A Bank — <Topic>
- **ROI sensitivity** — Show tornado chart; commit to 30/60/90-day checkpoint.
- **Data quality** — Contract SLOs; run data contracts + alerts; weekly QA report.
- **Change management** — Training plan; comms cadence; champions program.
- **Integration risk** — Start with 3 core sources; expand in phase 2; rollback plan.
- **Comparables** — Benchmarks from peers / case studies (links).
```

### `board/stakeholder_map.csv`

```csv
Stakeholder,Role,Influence (H/M/L),Stance (For/Neutral/Against),Key Concern,Message,Pre-wire Owner
<Name>,Board Member,H,Neutral,"Lock-in, cost volatility","Budget caps + exit criteria","CEO"
```

### `board/slide_outline.md`

```markdown
1. Title & Headline
2. KPI deltas (sparkline/table)
3. Options & trade-offs (1 slide)
4. Risks & guardrails (1 slide)
5. Decision request (ask, dates, budget)
```

---

## Timebox

* **⏱ 60–75 min:** 10 message map • 25 pre-brief • 20 talk track • 10 Q\&A • 10 rehearse.


