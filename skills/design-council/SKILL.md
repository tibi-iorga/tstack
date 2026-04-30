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

After presenting all four approaches in text, ask:

```
Would you like an HTML preview that shows the four approaches side by side in your browser? (yes / no)
```

If yes, follow **Part 1b** below. If no, skip straight to the choice prompt.

Then, regardless of whether a preview was generated, ask the user which approach they want to move forward with, or whether they want to combine elements from multiple approaches. Do not proceed to Part 2 until the user has chosen.

---

## Part 1b: HTML Preview (optional)

Generate a single, self-contained HTML file that visualises all four approaches side by side. The goal is a quick visual gut check, not a polished mockup.

**File requirements**
- Single HTML file. No build step. No external dependencies beyond a CDN.
- Use Tailwind via CDN (`<script src="https://cdn.tailwindcss.com"></script>`) for styling. Do not hand-roll CSS.
- Inter font via Google Fonts is acceptable. Avoid heavy libraries.
- Light mode by default. Clean, neutral aesthetic. The point is to show paradigm differences, not visual flair.

**Page structure**
1. Top header: the design problem in one sentence, plus a one-line caveat ("Exploration sketches, not final designs.").
2. Four-column grid on wide screens, two-column on tablet, single column on mobile. Use Tailwind responsive classes.
3. Each column contains:
   - Approach name as a heading.
   - One-sentence summary of the mental model.
   - A **visual representation** of the UI for that approach. This is the important bit. Build a small, stylised mock that shows the paradigm in action: a fake command palette for "Command Centre," a chat thread for "Conversational Guide," a stepper for "Progressive Disclosure," etc. Use real-feeling labels, not Lorem Ipsum.
   - A short trade-off line at the bottom ("Wins for power users. Loses for first-timers.").
4. Footer with a "Pick one to develop further" prompt that mirrors the chat question.

**File location and naming**
- Save to the current working directory as `design-council-{YYYY-MM-DD-HHmm}.html`.
- Do not overwrite previous runs; the timestamp guarantees uniqueness.

**Opening the file**
After writing, open it in the default browser. Use the platform-appropriate command:
- Windows: `start design-council-{timestamp}.html`
- macOS: `open design-council-{timestamp}.html`
- Linux: `xdg-open design-council-{timestamp}.html`

If platform detection is unclear, write the file and tell the user the path so they can open it manually. Do not block on the open succeeding.

After the file is generated, return briefly to chat with: "Preview saved to `<path>` and opened in your browser." Then ask the choice question.

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
