# tibi-stack

A personal AI skills toolkit for product management, strategy, and software development built for Claude Code.

Inspired by [gstack](https://github.com/garrytan/gstack) by Garry Tan.

---

## What it is

tibi-stack is a collection of slash commands for Claude Code that act as a personal council of specialists. Each skill embodies a distinct role or framework, from YC-style product critique to systematic root cause debugging. The goal is to have opinionated, high-quality thinking partners available instantly, without re-prompting from scratch every time.

---

## Setup

**Option 1: paste this into Claude Code**

Open Claude Code and paste the following message into the chat:

```
I want to install tibi-stack from https://github.com/tibi-iorga/tibi-stack. Please run the setup script:

git clone https://github.com/tibi-iorga/tibi-stack.git ~/.claude/skills/tibi-stack && cd ~/.claude/skills/tibi-stack && ./setup

Then confirm how many skills were installed.
```

Claude will clone the repo and run setup for you.

**Option 2: run it yourself**

```bash
git clone https://github.com/tibi-iorga/tibi-stack.git ~/.claude/skills/tibi-stack && cd ~/.claude/skills/tibi-stack && ./setup
```

Requirements: [Claude Code](https://claude.ai/code) and Git.

The setup script clones the repo to `~/.claude/skills/tibi-stack`, registers it in your `~/.claude/CLAUDE.md`, and copies all skills into `~/.claude/commands/` so they appear in the `/` menu. Restart Claude Code after setup.

---

## Skills

### Product and Strategy

| Skill | What it does |
|---|---|
| `/office-hours` | YC-style reality check on an idea. Brutal honesty on demand, market, and whether it is worth pursuing. |
| `/1pager` | Creates a structured one-pager from context: problem, hypothesis, goals, scope, risks. |
| `/prd` | Asks clarifying questions then generates a full PRD saved to /tasks. |
| `/strategy-memo` | Generates a concise strategy memo: problem, vision, principles, goals, solution, non-priorities. |
| `/sowhat` | Runs the So What framework five times in sequence, forcing progressively deeper insight from any observation. |
| `/instrumentation` | Walks through building a metric tree: business outcomes, product outcomes, leading indicators. |

### Councils

Multi-perspective reviews where different lenses run in sequence to surface blind spots.

| Skill | What it does |
|---|---|
| `/strategy-review` | Stress-tests a strategy from three angles: devil's advocate, SWOT, then bear/bull/base scenarios. |
| `/pm-review` | Reviews a PRD from three seats: engineering feasibility, executive business value, user researcher empathy. |
| `/mentor-review` | Gets POV and recommendations from Marc Andreessen, Andy Grove, Jack Welch, Clayton Christensen, Brian Chesky (Airbnb), and Travis Kalanick (Uber). |
| `/design-council` | Generates fundamentally different design approaches to the same problem (different interaction paradigms, mental models, design patterns), then combs the chosen direction for consistency issues. |

### Communications

| Skill | What it does |
|---|---|
| `/release-notes` | Generates honest, customer-facing release notes answering the seven key questions. |
| `/impact-story` | Turns survey data and usage metrics into a polished internal impact story for leadership. |
| `/exec-email` | Drafts a strategic executive email: context, insights, recommendation, one clear ask. |

### Engineering

| Skill | What it does |
|---|---|
| `/review` | Pre-merge code review. Flags bugs, logic errors, security issues, and pattern violations. |
| `/qa` | Runs Playwright browser tests, finds bugs, fixes them, loops until clean. |
| `/ship` | Bumps version, updates changelog, commits, pushes, and opens a pull request. |
| `/investigate` | Systematic root cause debugging: investigate, analyse, hypothesise, then fix. |

### Maintenance

| Skill | What it does |
|---|---|
| `/tibi-upgrade` | Pulls the latest skills from GitHub. |

---

## Global conventions

All skills follow a shared set of conventions defined in `agents.md`:

- British English throughout.
- No dashes; commas, semicolons, or periods instead.
- Simple, direct language.
- Senior product manager tone.
- No invented data or speculative metrics.

---

## How it works

Skills are markdown prompt files in the `skills/` directory. When you type `/skill-name` in Claude Code, it reads the corresponding file and follows those instructions. Adding a new skill is as simple as adding a `.md` file to `skills/` and documenting it in `CLAUDE.md`.

---

## Adding new skills

1. Create `skills/your-skill-name.md` with clear instructions.
2. Add an entry to the skills list in `CLAUDE.md`.
3. Commit and push. Run `/tibi-upgrade` on any other machine to get the update.

---

## Acknowledgements

Structure and approach inspired by [gstack](https://github.com/garrytan/gstack) by Garry Tan. The skill content, frameworks, and conventions are my own.
