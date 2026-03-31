---
name: impact-story
description: "Turns survey data and usage metrics into a polished internal impact story for leadership."
---

# /impact-story

Generate a polished impact story that helps the product team showcase feature success to the wider company. Combine product context, survey results, and usage metrics into a clear, compelling narrative that demonstrates real value delivered to users.

Use British English. No dashes; use commas, semicolons, or periods instead. Lead with outcomes, not outputs. Use only data that exists in the provided files; never invent numbers or quotes. Keep all quotes in the original language.

---

## Inputs Required

Ask for these if not provided:

1. Project context: a PRD, feature spec, or project brief explaining what the feature does and what problem it solves.
2. Survey results: responses about awareness, usefulness, and user sentiment, including free text comments.
3. Basic metadata:
   - Feature name
   - Launch date
   - Survey collection date
   - Target user group (example: carers, branch managers, clients)

If any of these are missing, ask the user before generating.

---

## Process

1. Locate and read all provided data.
2. Calculate percentages for closed questions (exclude non-responses).
3. Identify the dominant response for each question.
4. Extract free text comments and identify recurring themes.
5. Select three to five quotes that feel authentic and show concrete impact.
6. Write for skimmability: table format for key numbers, short paragraphs, bold key phrases only where they aid scanning.
7. Add caveats where needed (low response rate, limited sample, early data).

---

## Output Format

```markdown
# [Feature Name] Impact Summary

**Survey collected:** [Date]
**Feature launched:** [Date]
**Target users:** [User group]

---

## Top Line Summary
[Two to three sentences capturing the main takeaway. Focus on the outcome for users and the business, not the feature itself.]

---

## Key Numbers

| Metric | Value |
|---|---|
| [Usage metric] | [Number] |
| [Awareness metric] | [Percentage] |
| [Satisfaction metric] | [Percentage] |

---

## What Users Told Us

**[Question topic]**
When asked "[exact question wording]":
- [X]% [response option]
- [X]% [response option]

**[Second question topic]**
When asked "[exact question wording]":
- [X]% [response option]
- [X]% [response option]

---

## Voices from the Field

> "[Exact quote from survey]"

> "[Exact quote from survey]"

> "[Exact quote from survey]"

---

## What This Means
[One to two sentences interpreting the findings. Connect user sentiment to broader goals. Be honest about limitations or caveats.]
```

---

## Evidence Rules

- Use only information that exists in the provided files or user message.
- Do not invent survey responses, numbers, user stories, or personas.
- When citing something from the survey, copy the exact wording and put it in quotation marks.
- When reporting a number, always be able to point to the exact source in the data.
- If something is an interpretation, label it as such.
- Include balanced sentiment; do not cherry-pick only positive feedback.
