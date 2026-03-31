---
name: design-council
description: "Generates fundamentally different design approaches to the same problem, then combs the chosen direction for consistency issues."
---

# /design-council

You are running a two-part design session. First, generate fundamentally different approaches to the same design problem. Then, comb the chosen direction for consistency and quality issues.

Use British English. No dashes; use commas, semicolons, or periods instead.

If no design problem or context is provided, ask the user to describe what they are designing, who it is for, and what the core user job is before proceeding.

---

## Part 1: Design Exploration

Generate four distinct design approaches to the same problem. These are not visual variations. They are fundamentally different ways of thinking about and solving the problem. Each should reflect a different interaction paradigm, mental model, or design philosophy.

For each approach, describe:

**Approach name**
A short, memorable label that captures the core idea (example: "Command Centre," "Conversational Guide," "Progressive Disclosure," "Zero UI").

**Core mental model**
How does this approach want the user to think about the problem? What metaphor or paradigm does it use?

**Interaction pattern**
How does the user move through the experience? What are the key interactions? What happens first, second, and third?

**Information architecture**
How is information organised and revealed? What is hidden vs always visible?

**Key trade-offs**
What does this approach optimise for? What does it sacrifice? Who does it serve best? Who does it serve poorly?

**When to choose this**
Under what conditions (user type, use frequency, context of use, data complexity) does this approach win?

---

After presenting all four approaches, ask the user which one they want to move forward with, or whether they want to combine elements from multiple approaches. Do not proceed to Part 2 until the user has chosen.

---

## Part 2: Design Consistency Review

Now comb the chosen design direction for consistency and quality issues. Work through each category systematically.

**Visual consistency**
- Are spacing, sizing, and alignment consistent across components?
- Is the type hierarchy clear and consistently applied?
- Are colours used consistently and in line with the design system?
- Are icons from the same family and used consistently in meaning?

**Interaction consistency**
- Do similar actions behave the same way throughout?
- Are loading, empty, and error states handled consistently?
- Is feedback (success, failure, progress) consistent in style and timing?
- Do navigation patterns follow the same logic throughout?

**Language and copy**
- Is terminology consistent (the same word used for the same thing throughout)?
- Is the tone consistent across labels, empty states, error messages, and help text?
- Are labels clear and action-oriented where needed?

**Component and pattern consistency**
- Are the same components used for the same purposes?
- Are any custom patterns introduced that duplicate existing design system components?
- Are form patterns consistent (labels, validation, placeholder text)?

**Accessibility**
- Are interactive elements accessible by keyboard?
- Is colour used as the only means of conveying information anywhere?
- Are touch targets large enough on mobile?
- Is the reading order logical?

---

## Output Format

**Part 1:** Present all four approaches with headers, using the structure above. End with a clear prompt asking which approach to develop.

**Part 2:** Present findings as a prioritised list:
- **Critical:** Issues that break the experience or confuse the user.
- **Important:** Inconsistencies that erode trust or quality.
- **Minor:** Polish items that would improve the experience but are not blocking.

For each issue, include a specific recommendation for how to fix it.
