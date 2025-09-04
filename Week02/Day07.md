# Week02 - Day07: AI Maturity Discovery & Investor-Ready Update

## Objectives
- Validate finance/AI artifacts against NetSuite’s **AI maturity model**  
- Practice writing a concise **investor-ready update** framed around discovery insights  
- Map one client or case study into **AI adoption stages**: Paper → Digital → RPA → ML → Deep Learning  

---

## Lesson Summary
Executives often want **deep AI insights** but are stuck in **manual or semi-digital processes**.  
Your role as a Fractional CXO is to **diagnose where they are today** and **communicate the next logical step clearly**.  

This week’s review connects:  
- **Discovery questions** (AI maturity assessment)  
- **Traceability** of KPI movement from Week 02  
- **Investor-style narrative** that proves credibility and focus  

---

## Activity

### 🔎 Step 1: Run the AI Maturity Assessment
Ask your client (or role play as one):  
1. Are records mostly **paper, spreadsheets, or ERP-native**?  
2. How much of AP/AR and expense reporting is **still manual**?  
3. Do you have **clean, labeled datasets** large enough for ML?  
4. Is there appetite for **predictive analytics** (pricing, churn, demand)?  
5. Do compliance leaders trust **current audit workflows**, or is AI desired?  

### 📝 Step 2: Map to Maturity Stage
Use this quick rubric:

| Stage | Signal | Example ROI |
|-------|--------|-------------|
| Paper | Records in filing cabinets, PDF invoices | High error risk |
| Digital | ERP/SQL but no automation | Basic reporting |
| RPA | OCR + automated AP/AR | Cost/time savings |
| ML | Forecasting, churn models | Revenue lift |
| Deep AI | AI audit copilots, GenAI reporting | Strategic edge |

### 🏗 Step 3: Investor-Ready Note
Write a **two-paragraph update**:  
- **Paragraph 1 (Highlights/KPIs):** Where client is on the maturity model + any KPI movements  
- **Paragraph 2 (Decision Request):** The next logical investment (e.g., “fund OCR automation before ML pilots”)  

---

## Deliverable
- File: `finance/week02_ai_maturity_review.md`  
- Sections:  
  - Highlights  
  - KPI Moves  
  - AI Maturity Stage (with table)  
  - Risks  
  - Decision Request  
  - Next Focus  

---

## Acceptance and QA
- Discovery responses are mapped to the **correct stage**  
- KPIs tie back to Week 02’s earlier CSV/MD files  
- **Decision request** is explicit, time-bound, and realistic  

---

## Timebox
- 45 minutes  

---

## Visual Aid (Mermaid Workflow)

```mermaid
flowchart TD
    A[User BI Question] --> B[BI Expert (exec_bi)]
    B --> C{Select Chart Type?}
    C -->|avg_p1_by_segment| D[Bar Chart: x=segment, y=avg_p1]
    C -->|avg_p1_by_member_rating| E[Bar Chart: x=member_rating, y=avg_p1]
    C -->|count_by_member_rating| F[Bar Chart: x=member_rating, y=count]
    C -->|top_purchase_frequency| G[Bar Chart: x=segment, y=max_purchase_frequency]
    C -->|other/unexpected| H[Generic Bar Chart]

    D --> I[Streamlit Dashboard]
    E --> I
    F --> I
    G --> I
    H --> I

    style A fill:#222,color:#fff,stroke:#555
    style I fill:#111827,color:#facc15,stroke:#444

````
