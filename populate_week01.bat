@echo off
setlocal
cd /d C:\Users\Veteran\Documents\GitHub\tech-fractional-cxo-program

if not exist Week01 md Week01
if not exist assets md assets
if not exist assets\week01 md assets\week01

rem ========================= Day 01 =========================
> "Week01\Day01.md" (
echo # Week01 - Day01: Orientation and CXO Role Mandate
echo
echo ## Objectives
echo - Understand program structure and portfolio outcomes
echo - Define the fractional CXO mandate and boundaries
echo - Set up repo folders for artifacts and weekly work
echo
echo ## Lesson Summary
echo The non-traditional CXO path focuses on decision quality and operating rhythm over credentials. This program builds a portfolio of artifacts that demonstrate boardroom competence. You will work in short cycles: learn, build, review.
echo
echo ## Activity
echo - Create folders: governance, finance, risk, operations inside the repo
echo - Draft a one page role mandate using the prompt in the Deliverable
echo
echo ## Deliverable
echo - File: governance\cxo_role_mandate.md
echo - Include scope, decision rights, time commitment, reporting cadence, success measures
echo
echo ## Acceptance and QA
echo - Scope and decision rights are explicit
echo - Success measures include at least two measurable targets
echo
echo ## Suggested Assets
echo - Use placeholder images in assets\week01\ if needed
echo
echo ## Timebox
echo - 60 to 90 minutes
)

rem ========================= Day 02 =========================
> "Week01\Day02.md" (
echo # Week01 - Day02: Decision Rights and RACI
echo
echo ## Objectives
echo - Map decisions to owners and escalation paths
echo - Build a simple RACI for core processes
echo
echo ## Lesson Summary
echo Clear decision rights reduce rework and conflict. Keep responsibilities lightweight and visible. Focus on high frequency and high risk decisions first.
echo
echo ## Activity
echo - Identify five recurring decisions to govern
echo - Draft a RACI table for each
echo
echo ## Deliverable
echo - File: governance\decision_rights_and_raci.md
echo - Include a table with Decision, Responsible, Accountable, Consulted, Informed
echo
echo ## Acceptance and QA
echo - At least five decisions covered
echo - No role listed as Accountable for more than three decisions unless justified
echo
echo ## Timebox
echo - 75 minutes
)

rem ========================= Day 03 =========================
> "Week01\Day03.md" (
echo # Week01 - Day03: Governance Charter v1
echo
echo ## Objectives
echo - Create a lightweight governance charter suitable for a startup
echo - Define meeting cadence and inputs to decisions
echo
echo ## Lesson Summary
echo The charter should state purpose, scope, cadence, roles, and how decisions are recorded. Keep it concise and useful during meetings.
echo
echo ## Activity
echo - Draft the charter using a simple template with headings
echo - Include decision log format and storage path
echo
echo ## Deliverable
echo - File: governance\governance_charter_v1.md
echo - Sections: Purpose, Scope, Cadence, Roles, Decision Log, Amendments
echo
echo ## Acceptance and QA
echo - Cadence includes dates or frequency
echo - Decision log path is a repo relative folder
echo
echo ## Timebox
echo - 90 minutes
)

rem ========================= Day 04 =========================
> "Week01\Day04.md" (
echo # Week01 - Day04: 30-60-90 Onboarding Plan
echo
echo ## Objectives
echo - Plan first ninety days of impact
echo - Connect onboarding tasks to measurable outcomes
echo
echo ## Lesson Summary
echo An onboarding plan aligns stakeholders and creates momentum. Focus each phase on outcomes and owners, not busy work.
echo
echo ## Activity
echo - Draft a three phase checklist and milestones
echo - Include expected results and owners for each phase
echo
echo ## Deliverable
echo - File: operations\onboarding_30_60_90.md
echo - Sections: Goals, Milestones, Risks, Owners, Metrics
echo
echo ## Acceptance and QA
echo - Each phase has at least one measurable result
echo - Risks include one mitigation per phase
echo
echo ## Timebox
echo - 60 minutes
)

rem ========================= Day 05 =========================
> "Week01\Day05.md" (
echo # Week01 - Day05: Founder Alignment Brief
echo
echo ## Objectives
echo - Capture expectations on scope, communication, and decision process
echo - Align on success criteria and guardrails
echo
echo ## Lesson Summary
echo Alignment reduces churn and accelerates decisions. Document what good looks like and how trade offs will be handled.
echo
echo ## Activity
echo - Draft a one page alignment brief for a founder
echo - Include assumptions and working agreements
echo
echo ## Deliverable
echo - File: governance\founder_alignment_brief.md
echo - Headings: Context, Scope, Guardrails, Working Agreements, Success Measures
echo
echo ## Acceptance and QA
echo - At least two assumptions stated and tested
echo - Success measures match repo KPIs
echo
echo ## Timebox
echo - 60 minutes
)

rem ========================= Day 06 =========================
> "Week01\Day06.md" (
echo # Week01 - Day06: Case Study and Reflection
echo
echo ## Objectives
echo - Apply the week to a short scenario
echo - Record lessons and next steps
echo
echo ## Lesson Summary
echo Use a realistic scenario to stress test your artifacts. Reflection turns activity into learning and improvement.
echo
echo ## Activity
echo - Pick a scenario such as decision conflict or unclear scope
echo - Walk through mandate, RACI, and charter to resolve it
echo
echo ## Deliverable
echo - File: case-studies\week01_case_reflection.md
echo - Include Situation, Actions, Results, and Changes to artifacts
echo
echo ## Acceptance and QA
echo - Reflection lists two changes to artifacts
echo - Results include one metric or observable outcome
echo
echo ## Timebox
echo - 45 minutes
)

rem ========================= Day 07 =========================
> "Week01\Day07.md" (
echo # Week01 - Day07: Weekly Review and Quality Check
echo
echo ## Objectives
echo - Review Week01 artifacts for completeness and coherence
echo - Prepare a short update note ready for a stakeholder
echo
echo ## Lesson Summary
echo A weekly review ensures artifacts stay consistent. Close the loop by writing a brief status update with next week focus.
echo
echo ## Activity
echo - Run a checklist across all files created this week
echo - Draft a status note with one risk and one decision request
echo
echo ## Deliverable
echo - File: operations\week01_review_and_status.md
echo - Sections: Completed, Risks, Decisions Needed, Next Focus
echo
echo ## Acceptance and QA
echo - All Week01 deliverables exist and reference each other
echo - Status note is concise and can be shared as is
echo
echo ## Timebox
echo - 45 minutes
)

echo(
echo ✅ Week01 lesson content created.
endlocal
