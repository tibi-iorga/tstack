# tstack

Product judgement and stakeholder communication for engineers.

Skills for questioning requests, explaining trade-offs, making the case for technical work, and showing whether what you shipped helped.

Designed to complement [Matt Pocock's engineering skills](https://github.com/mattpocock/skills), supporting the conversations and decisions around the code.

## When to use it

| Situation | Skills |
|---|---|
| You want to understand whether a request solves a real problem. | `/office-hours`, `/sowhat` |
| You need to explain a proposal or challenge its assumptions. | `/1pager`, `/pm-review` |
| You need to make the case for an investment. | `/money-stories`, `/exec-email` |
| You are preparing for a consequential stakeholder meeting. | `/pressure-test` |
| You need to define success or explain results after shipping. | `/instrumentation`, `/impact-story`, `/release-notes` |
| You are examining AI competition or automation opportunities. | `/ai-moat`, `/ooda` |

Each skill is a structured method packaged as an [Agent Skill](https://agentskills.io). Invoke it in your agent with the relevant context, such as a proposal, feature description, meeting notes, or survey results.

The library currently contains **12 thinking and communication skills, plus one update utility**. The existing skill instructions are retained in this first pruning pass; their workflows will be improved separately.

## Setup

**Option 1: paste this into your agent**

Open Claude Code, Cursor, Codex, or any agent that can run shell commands, and paste the following message into the chat:

```
I want to install tstack from https://github.com/tibi-iorga/tstack. Please run the setup script:

git clone https://github.com/tibi-iorga/tstack.git ~/.tstack && cd ~/.tstack && ./setup

On Windows PowerShell, run ./setup.ps1 instead of ./setup.

Then confirm how many skills were installed.
```

The agent will clone the repo and run setup for you.

**Option 2: run it yourself**

macOS, Linux, or Git Bash:

```bash
git clone https://github.com/tibi-iorga/tstack.git ~/.tstack && cd ~/.tstack && ./setup
```

Windows PowerShell:

```powershell
git clone https://github.com/tibi-iorga/tstack.git "$HOME/.tstack"; Set-Location "$HOME/.tstack"; ./setup.ps1
```

Requirements: Git and an agent that supports [Agent Skills](https://agentskills.io) (Claude Code, Cursor 2.4+, OpenAI Codex, GitHub Copilot, Gemini CLI).

The setup script clones the repo to `~/.tstack`, then installs each skill as `<skills-dir>/<skill-name>/SKILL.md` in `~/.agents/skills/` (the cross-tool location) plus the tool-specific directories it finds on your machine (`~/.claude/skills/`, `~/.codex/skills/`). If you have an older tstack install at `~/.claude/skills/tstack`, setup migrates it and removes the old copy so skills are not registered twice. Restart your agent after setup.

---

## Skills

### Product judgement

| Skill | What it does |
|---|---|
| [`/office-hours`](skills/office-hours/SKILL.md) | Tests demand, the status quo, and the smallest useful version of an idea. |
| [`/1pager`](skills/1pager/SKILL.md) | Structures a proposal around the problem, hypothesis, goals, scope, and risks. |
| [`/sowhat`](skills/sowhat/SKILL.md) | Traces an observation through successive consequences towards a decision or action. |
| [`/pm-review`](skills/pm-review/SKILL.md) | Reviews a PRD through engineering feasibility, business value, and user research perspectives. |
| [`/instrumentation`](skills/instrumentation/SKILL.md) | Builds a metric tree connecting business outcomes, processes, product outcomes, and measures. |

### Stakeholder communication

| Skill | What it does |
|---|---|
| [`/money-stories`](skills/money-stories/SKILL.md) | Builds a simple business case using two known numbers and one labelled estimate. |
| [`/pressure-test`](skills/pressure-test/SKILL.md) | Prepares a decision meeting by examining the ask, decision-maker, objections, and presentation structure. |
| [`/exec-email`](skills/exec-email/SKILL.md) | Drafts an executive email with context, insights, a recommendation, and one clear ask. |
| [`/impact-story`](skills/impact-story/SKILL.md) | Turns survey results and usage metrics into an internal impact summary with evidence and caveats. |
| [`/release-notes`](skills/release-notes/SKILL.md) | Explains customer capabilities, benefits, limitations, availability, and how to get started. |

### AI strategy

| Skill | What it does |
|---|---|
| [`/ai-moat`](skills/ai-moat/SKILL.md) | Examines defensibility under a scenario where AI sharply reduces software building costs. |
| [`/ooda`](skills/ooda/SKILL.md) | Decomposes a workflow into observation, orientation, decision, and action to examine automation and human responsibilities. |

### Maintenance

| Skill | What it does |
|---|---|
| [`/tstack-upgrade`](skills/tstack-upgrade/SKILL.md) | Pulls the latest tstack skills from GitHub and reinstalls them. |

## Updating an existing installation

Run `/tstack-upgrade` to update the retained skills.

Version 1.8.0 removes these nine skills from the repository:

- `carmack`
- `design-council`
- `mentor-review`
- `prd`
- `socratic-quiz`
- `strategy-memo`
- `strategy-review`
- `tstack-add-skill`
- `uk-medical-device-check`

The current installer copies skills but does not remove retired copies from existing installations. If you previously installed these skills, remove their tstack-installed folders from `~/.agents/skills/` and any applicable `~/.claude/skills/` or `~/.codex/skills/` directories. Check for personal changes or copies from other libraries before removing anything. Restart your agent afterwards.

## License

MIT. See [LICENSE](LICENSE). Use it, fork it, change it, ship your own version.
