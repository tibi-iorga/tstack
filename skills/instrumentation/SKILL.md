---
name: instrumentation
description: "Walks through building a metric tree: business outcomes, product outcomes, leading indicators."
---

# /instrumentation

Guide the user through building a metric tree for product instrumentation. Work iteratively. Ask questions at each step before moving forward.

Use British English. No dashes; use commas, semicolons, or periods instead. Simple, direct language. Challenge vague language; push for concrete, measurable outcomes.

---

## What Is Instrumentation?

Instrumentation is what you need to measure to see if a feature is solving the problem it was designed to solve. It falls into four categories:

1. Is my feature working correctly? (functional and non-functional requirements)
2. How are users adopting and experiencing my feature? (product outcomes and metrics)
3. Is my feature making operations run better? (process outcomes and metrics)
4. Has the business improved because of my feature? (business outcomes and metrics)

---

## Step 1: Business Outcomes

Ask: "What is the primary business outcome this product or feature is designed to achieve?"

Push for specificity. "Improve efficiency" is not a business outcome. "Reduce cost of sales by X%" is.

After the primary outcome, ask: "Are there secondary business outcomes or constraints to track?"

Guide them to identify:
- **Primary business outcome:** The main goal (example: win more contracts).
- **Secondary business outcome:** Outcomes enabled by process, not directly by product (example: improve client outcomes).
- **Constraints:** Outcomes that must be maintained or minimised (example: minimise branch efficiency impact).

**Key distinction:** Secondary business outcomes are enabled by what people do, not directly by the product. If the user conflates these, clarify.

Output: A list of business outcomes with clear definitions and why the business cares.

---

## Step 2: Process Outcomes

Ask: "To achieve [business outcome], what processes need to work? What do people need to do?"

Break down until you reach clear, actionable process outcomes. Continue asking: "To [outcome], we need to [process], which requires [sub-process]..."

**Process vs product distinction:**
- Process outcomes = what people or operations need to do (behavioural changes, SOP compliance).
- Product outcomes = how the product enables those behaviours (ease of use, adoption).

Ask: "Can we organise these process outcomes around user workflows (for example, setup, collection, review)?"

Output: A hierarchical list of process outcomes, organised by workflow where applicable.

---

## Step 3: Product Outcomes

For each process outcome, ask: "How does the product enable this process? What product outcome makes this possible?"

Push for concrete language. Avoid abstract terms.
- Instead of: "It is easy to set up outcomes"
- Use: "Branch staff can set up outcomes with minimal time" (measurable: time to complete)

Split product outcomes when they measure different aspects (ease vs quality, setup vs review).

Output: Product outcomes for each process outcome, using concrete and measurable language.

---

## Step 4: Metrics

For each product outcome, ask: "How do we measure if this product outcome is being achieved?"

Guide through metric selection:

**Adoption and engagement:** Usage, frequency, stickiness.
**Success and efficiency:** Completion rates, time to complete, error rates.
**Satisfaction and experience:** CSAT, UMUX-Lite, CES, qualitative feedback.

Consider multi-level adoption:
- Individual level: % of users who adopt.
- Organisational level: % of branches or teams that adopt.
- Coverage level: % of entities (clients, cases) covered.

If a feature does not exist yet, list the metrics you would track if it did, and note: "These metrics cannot be measured because the feature does not exist in the current MVP scope."

For manual measurement: "Can we use a temporary manual bridge?" Options include manual audits, workaround tracking, or qualitative feedback themes.

Output: Metrics for each product outcome, with notes on gaps and manual bridges where needed.

---

## Step 5: Validate

Review the complete tree and check:

1. Does the causal chain flow logically? Business outcome, then process outcome, then product outcome, then metrics.
2. Are all outcomes concrete and measurable?
3. Are gaps and missing features clearly documented?
4. Do metrics answer "Is this working as intended?"

---

## Metric Reference

| Domain | Example Measure | Method |
|---|---|---|
| Unique users | Monthly or weekly active users as % of total | Analytics |
| Frequency | Clicks on core components of the feature | Analytics |
| Stickiness | Weekly active users divided by monthly active users | Analytics |
| Completion rate | % of user flows that are successful | Analytics |
| Time to complete | Active time taken to go through the funnel | Analytics |
| Error rate | % of funnels that encounter an error event | Analytics |
| CSAT | Customer satisfaction score | Survey |
| UMUX-Lite | System usability and usefulness | Survey |
| CES | Customer effort score | Survey |
| Ticket volume | Volume of tickets preventable by the feature | Support tool |
