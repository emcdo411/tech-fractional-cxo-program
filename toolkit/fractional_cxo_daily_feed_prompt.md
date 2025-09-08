# Fractional CXO Daily Feed — TL;DR / TL;DW (20-Minute Sprints)

**Suggested filename:** `toolkit/fractional_cxo_daily_feed_prompt.md`
**Use case:** Daily, skimmable intel + LinkedIn drafts for aspiring fractional CXOs from non-traditional backgrounds.

---

## Why this exists

A copy-paste prompt that generates a **5-minute daily rundown** (news + signals + exec stats) **and** two **Top-Voice-style LinkedIn drafts** (AM/PM). Works with any AI assistant that has **web browsing**.

---

## How to use (quick)

* Open your **browsing-enabled** AI tool.
* Paste the **Prompt** below.
* (Optional) Tweak the **CONFIG** block (region, sectors, tickers).
* Publish the AM/PM LinkedIn drafts (put links in the **first comment**).

---

## Prompt (copy/paste)

```text
Act as a **best-in-class fractional CXO** (AI/Data/Sec/Product) writing for ambitious operators from **non-traditional backgrounds**. Pull today’s most relevant items across:
1) AI policy & privacy (EU AI Act/GDPR/US regs),
2) Enterprise AI architecture (RAG, evals, guardrails, FinOps),
3) Security/zero-trust signals,
4) Market bellwethers (SPY, QQQ, MSFT, NVDA) & notable AI tickers,
5) Operator stories (case studies, failures, migrations).

OUTPUT EXACTLY THIS STRUCTURE:

I. Market Snapshot (≤90s read)
• Index/mega-cap moves (pre/close), 1-liner why it matters to operators.
• “3 fast stats” (e.g., GPU prices, model costs, hiring signals).

II. Must-Reads (3–5 items, ≤2 lines each, non-technical)
• Headline (plain English) — What happened → Why it matters → Operator takeaway.
• Source attribution (publisher + date). Put raw links in a “Sources” list at the end.

III. Tech Briefs (3 items, ≤2 lines each)
• Architecture/guardrails/evals/FinOps levers relevant to deployment.

IV. Signals & Watchlist (bullets)
• Policy moves, vendor changes, supply chain, notable outages/incidents.

V. Fast Exec Stats
• 3 quantified bullets (privacy adoption %, cost deltas, latency SLOs).

VI. 20-Minute Sprint (TL;DR / TL;DW)
• If you have 20 minutes: read X, skim Y, watch Z (each with 1-line “so what”).

VII. People Note
• 1 uplifting item for non-traditional builders (scholarship, fellowship, success story).

VIII. Two LinkedIn Drafts (Top-Voice style)
• AM Post (≤900 chars): tight hook + 3 value bullets + save/share cue + 3–5 niche hashtags.
• PM Post (≤900 chars): late-day angle (earnings/policy/launch) + 2 actionable takeaways + CTA.
• Keep links OUT of the post; provide a FIRST COMMENT block with sources + one smart question.
• Optimize for LinkedIn: strong hook, mobile line breaks, minimal emojis, niche hashtags, save/share triggers.
• OPTIONAL: After drafting, run the body through your “linkedin-optimizer” agent to refine per its rubric.

CONSTRAINTS
• Each item must be readable in ≤5 minutes.
• Summaries must be non-technical but precise (no hype).
• Cite sources by name/date; place raw URLs in a “Sources” list at the end.
• If facts conflict, note the discrepancy and default to the most primary/authoritative source.
• End with a 1-slide brief (bullets) that a CXO can paste into a standup.

CONFIG (edit as needed)
Region focus: Global with NA/EU emphasis
Sectors: SaaS, healthcare, finance, automotive, public sector
Tickers: SPY, QQQ, MSFT, NVDA (add your watchlist)
Tone: pragmatic, inclusive, board-ready
Cadence: Generate daily; publish LinkedIn AM/PM 3×/week
```

---

## Output structure at a glance

* **Snapshot** → market in 90 seconds
* **Must-Reads** → 3–5 items, each ≤2 lines
* **Tech Briefs** → 3 deployable levers
* **Signals** → policy/vendor/outage watchlist
* **Fast Stats** → 3 clean, quantified bullets
* **20-Min Sprint** → read/skim/watch with “so what”
* **People Note** → inclusive story for momentum
* **Two LinkedIn Drafts** → AM/PM, Top-Voice style + first-comment sources

---

## Posting cadence (recommended)

* **Mon / Wed / Fri** → AM insight post; PM follow-up on late-day earnings/policy/launch.
* Keep **all links** in the **first comment** to maximize reach.

---

## First-comment template (paste under each LinkedIn post)

```
Sources & Further Reading:
• <Outlet> — <Title> (<Date>): <URL>
• <Outlet> — <Title> (<Date>): <URL>
• <Outlet> — <Title> (<Date>): <URL>

Question for you:
• What would you ship (or stop) this week based on this data?
```

---

