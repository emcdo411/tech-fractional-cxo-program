You are tasked with generating a complete, boardroom-ready Fractional CXO Toolkit repository suitable for GitHub. This toolkit is designed for fractional CIO/CTO/CISO/COO roles operating in venture-backed SMB/scale-up companies, with secondary users being founders, CEOs, board members, and investors.

The repository name is:
<repo_name>
{{REPO_NAME}}
</repo_name>

Throughout the content, use placeholders in the following format where customization is needed:
<placeholder_format>
{{like_this}}
</placeholder_format>

Your task is to create the following file structure and generate content for each file:

1. README.md
2. LICENSE.md
3. .gitignore
4. /syllabus/module1_governance.md
5. /syllabus/module2_finance.md
6. /syllabus/module3_cyber_risk.md
7. /syllabus/module4_operating_rhythm.md
8. /tools/governance_charter.md
9. /tools/decision_rights_raci.md
10. /tools/decision_memo_one_pager.md
11. /tools/board_pack_template.md
12. /tools/investor_update_template.md
13. /tools/okr_tree.yaml
14. /tools/kpi_scorecard.csv
15. /tools/driver_based_fin_model.md
16. /tools/capital_options_brief.md
17. /tools/risk_register.csv
18. /tools/cyber_baseline_checklist.md
19. /tools/incident_response_playbook.md
20. /tools/vendor_security_questionnaire.md
21. /tools/90_day_plan.md
22. /simulations/ai_decision_prompts.md
23. /simulations/crisis_wargame.md
24. /resources/reading_list.md
25. /scripts/new_artifact.ps1
26. /scripts/new_artifact.sh

For each file, follow these content generation guidelines:
1. Use a boardroom-ready, crisp, and action-oriented tone.
2. Optimize for clarity, speed to adoption, and investor credibility.
3. Use short paragraphs, bullet lists, and tables where appropriate.
4. Include verb-led headings and avoid unnecessary fluff.
5. Provide examples where helpful.
6. For unknown numbers or costs, write "unknown" or provide estimated ranges.

Specific requirements for each file:

1. README.md:
   - Include badges for duration, mode, level, tracks, and license.
   - Provide a one-line value proposition.
   - Create a Table of Contents with anchor links.
   - Include sections for "Executive Summary," "Who this is for," and "Outcomes."
   - Generate 8 Mermaid "boardroom" workflows (details in Mermaid Diagram Rules).
   - Include a Quickstart guide with git clone instructions and first artifacts.
   - Provide a deliverables checklist and assessment rubric.
   - Add a license note (DACR).

2. LICENSE.md:
   - Include the full text of the DACR-1.1 license.
   - Use the copyright line: Copyright (c) 2025 Erwin Maurice McDonald

3. .gitignore:
   - Include standard entries for .env, node_modules, dist, .DS_Store, and other common ignored files.

4. Syllabus files:
   - For each module, include goals, weekly agenda, deliverables, grading rubric hints, and "what good looks like" sections.

5. Tool files:
   - Create content as specified in the file names.
   - Ensure all tables, charts, and templates are complete and ready for use.

6. Simulation files:
   - Create AI decision prompts and crisis wargame scenarios.

7. Resource file:
   - Curate a reading list for leadership, finance, and cyber topics using plain bullets.

8. Script files:
   - Create PowerShell and Bash scripts to scaffold new artifacts by date and slug.

Mermaid Diagram Rules:
- Use only Mermaid syntax for diagrams.
- Use <br/> for line breaks inside nodes (NO \n).
- Provide titles and legends where useful.
- Validate syntax for flowchart, sequenceDiagram, stateDiagram-v2, gantt, and pie charts (if used).

Licensing:
Include this short top note in all files: "Licensed under DACR-1.1 — see LICENSE.md".

Output Format:
For each file, start a new section with:
#### FILE: <relative/path/filename.ext>
Include the file content in an appropriate code fence (```md, ```csv, ```yaml, ```json, ```mermaid, ```ps1, or ```sh).

Before generating each file's content, wrap your thought process in <file_planning> tags inside your thinking block. Consider the following:
- Break down the file's requirements into key components
- For README.md, list out the required sections and badges
- For tool files, outline the structure and key elements needed
- Consider the target audience (fractional CXOs, founders, CEOs, board members, investors) and how to make the content most useful for them
- Plan how to present the information in a boardroom-ready format

Begin generating the repository content now, starting with the README.md file and proceeding through all specified files in the order listed. Your final output for each file should consist only of the file content and should not duplicate or rehash any of the work you did in the file planning section. Do not include any additional commentary or explanations outside of the file sections and file planning tags.
