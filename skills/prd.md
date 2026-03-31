# /prd

## Goal

Guide the creation of a detailed Product Requirements Document (PRD) in Markdown format, based on an initial user prompt. The PRD should be clear, actionable, and suitable for a junior developer to understand and implement the feature.

Use British English throughout. No dashes; use commas, semicolons, or periods instead. Simple, direct language.

## Process

1. Receive the initial prompt from the user.
2. Ask the most essential clarifying questions needed to write a clear PRD. Limit to three to five questions. Provide lettered options so the user can reply with selections like "1A, 2C, 3B".
3. Generate the PRD based on the prompt and answers.
4. Save the PRD as `prd-[feature-name].md` inside the `/tasks` directory.

## Clarifying Questions Format

```
1. [Question]
   A. [Option]
   B. [Option]
   C. [Option]

2. [Question]
   A. [Option]
   B. [Option]
   C. [Option]
```

Only ask questions where the answer is not reasonably inferable from the prompt. Focus on gaps that would significantly change the PRD.

## PRD Structure

**1. Introduction and Overview**
Briefly describe the feature and the problem it solves. State the goal.

**2. Goals**
List the specific, measurable objectives for this feature.

**3. User Stories**
Detail the user narratives describing feature usage and benefits.

**4. Functional Requirements**
List the specific functionalities the feature must have. Use clear, concise language (example: "The system must allow users to upload a profile picture"). Number these requirements.

**5. Non Goals (Out of Scope)**
Clearly state what this feature will not include.

**6. Design Considerations (Optional)**
Link to mockups, describe UI or UX requirements, or mention relevant components or styles if applicable.

**7. Technical Considerations (Optional)**
Mention any known technical constraints, dependencies, or suggestions.

**8. Success Metrics**
How will the success of this feature be measured?

**9. Open Questions**
List any remaining questions or areas needing further clarification.

## Target Audience

Assume the primary reader is a junior developer. Requirements should be explicit, unambiguous, and avoid jargon where possible.

## Output

- Format: Markdown (.md)
- Location: /tasks/
- Filename: prd-[feature-name].md

## Final Instructions

1. Do not start implementing the PRD.
2. Always ask clarifying questions first.
3. Incorporate the user's answers before generating the final PRD.
