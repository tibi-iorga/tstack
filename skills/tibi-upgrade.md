# /tibi-upgrade

Update tibi-stack to the latest version from GitHub.

## Process

Run the following:

```bash
cd ~/.claude/skills/tibi-stack && git pull && cp skills/*.md ~/.claude/commands/
```

Report back:
- Whether the update was successful.
- What changed (run `git log --oneline -5` after pulling to show recent updates).
- Any errors encountered.

If the directory does not exist, prompt the user to run the setup script first:

```bash
git clone https://github.com/tibi-iorga/tibi-stack.git ~/.claude/skills/tibi-stack && cd ~/.claude/skills/tibi-stack && ./setup
```
