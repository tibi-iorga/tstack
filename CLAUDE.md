# tibi-stack

Personal AI skills toolkit for product management, strategy, and software development. Inspired by [gstack](https://github.com/garrytan/gstack).

## Available Skills

Invoke any skill with `/skill-name` in Claude Code.

### Product and Strategy

- **office-hours** — YC-style reality check on an idea. Brutal honesty on demand, market, and whether it is worth pursuing.
- **1pager** — Creates a structured one-pager from context: problem, hypothesis, goals, scope, risks.
- **prd** — Asks clarifying questions then generates a full PRD saved to /tasks.
- **strategy-memo** — Generates a concise strategy memo: problem, vision, principles, goals, solution, non-priorities.
- **sowhat** — Runs the So What framework five times in sequence, forcing progressively deeper insight from any observation.
- **instrumentation** — Walks through building a metric tree: business outcomes, product outcomes, leading indicators.

### Councils (Multi-Perspective Reviews)

- **strategy-review** — Stress-tests a strategy from three angles: devil's advocate, SWOT, then bear/bull/base scenarios.
- **pm-review** — Reviews a PRD from three seats: engineering feasibility, executive business value, user researcher empathy.
- **mentor-review** — Gets POV and recommendations from Marc Andreessen, Andy Grove, Jack Welch, Clayton Christensen, Brian Chesky, and Travis Kalanick.
- **design-council** — Generates fundamentally different design approaches to the same problem (different interaction paradigms, mental models, design patterns), then combs the chosen direction for consistency issues.

### Communications

- **release-notes** — Generates honest, customer-facing release notes answering the seven key questions.
- **impact-story** — Turns survey data and usage metrics into a polished internal impact story for leadership.
- **exec-email** — Drafts a strategic executive email: context, insights, recommendation, one clear ask.

### Engineering

- **review** — Pre-merge code review. Flags bugs, logic errors, security issues, and pattern violations.
- **qa** — Runs Playwright browser tests, finds bugs, fixes them, loops until clean.
- **ship** — Bumps version, updates changelog, commits, pushes, and opens a pull request.
- **investigate** — Systematic root cause debugging: investigate, analyse, hypothesise, then fix.

### Maintenance

- **tibi-upgrade** — Pulls the latest skills from GitHub.

## Skills Location

Skills are stored in `~/.claude/skills/tibi-stack/skills/`.

## Global Behaviour

All skills follow the conventions in `agents.md`:

- British English throughout.
- No dashes; use commas, semicolons, or periods instead.
- Simple, direct language.
- Senior product manager tone.
- No invented data or speculative metrics.
