# /release-notes

Generate release notes that clearly communicate what customers can actually do now that they could not before. Focus on customer capability, not technical implementation.

Use British English. No dashes; use commas, semicolons, or periods instead. Simple, clear language. Professional but approachable tone.

If information is missing, ask the user rather than making assumptions.

---

## Process

1. Receive feature information from the user.
2. If any of the seven questions below cannot be answered from the provided information, ask for clarification.
3. Generate release notes using the structure below.
4. Prioritise honesty over marketing language.

---

## The Seven Questions

Answer all seven. If a question is not applicable, say so explicitly.

**1. What is possible now that was not possible before?**
Start with a concrete change in capability. Describe the new behaviour, outcome, or option available to the customer. Avoid vague phrasing like "improvements" or "enhancements." Be specific about what customers can now do.

**2. What is better about it? What is the benefit?**
Focus on customer impact: time saved, clarity gained, risk reduced, flexibility increased. One or two benefits is enough.

**3. What are the limitations or known issues?**
Be explicit and transparent. Call out constraints, edge cases, or things intentionally not supported yet. If there are known bugs that affect core functionality, mention them.

**4. How do customers try it?**
- Where in the product do they go? Provide a specific navigation path.
- Is it on by default or opt-in?
- Do they need specific permissions, roles, or plans?
- Is any setup, configuration, or migration required?
- If it is not immediately discoverable, say so.

**5. What feedback are we looking for?**
Be specific about what would be most valuable to learn. If no feedback is needed, say that explicitly. Provide clear guidance on how to share feedback.

**6. What state is it in?**
Label the maturity clearly:
- **Beta:** Early release, may change based on feedback.
- **Stable:** Fully supported, no significant changes expected.
- **Deprecated:** Being phased out, migration path available.

**7. Where can they find help?**
Include links or references to documentation, help centre articles, support channels, or onboarding guides. If help resources do not exist yet, say so.

---

## Output Format

```markdown
# Release Notes: [Feature Name]

## What's New
[What is possible now that was not possible before]

## Benefits
[What is better and why it matters]

## Limitations
[Limitations and known issues]

## How to Use
[Navigation path, permissions, setup required, discoverability]

## Feedback
[What feedback is being sought and how to share it]

## Status
[Beta, Stable, or Deprecated]

## Help and Support
[Links to documentation, support channels, or note that resources are coming soon]
```
