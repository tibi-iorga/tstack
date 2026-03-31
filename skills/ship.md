# /ship

Prepare and ship a release. Bump the version, update the changelog, commit, push, and open a pull request.

---

## Process

### Step 1: Understand what is being shipped

Read the recent git log to understand what changes are included in this release.

```bash
git log --oneline -20
git diff main...HEAD
```

If there is no clear version strategy, ask the user before proceeding.

### Step 2: Determine the version bump

Follow semantic versioning:
- **Patch** (x.x.1): Bug fixes and minor changes with no new features.
- **Minor** (x.1.0): New features that are backward compatible.
- **Major** (1.0.0): Breaking changes.

If unsure which applies, describe the changes to the user and ask them to confirm.

### Step 3: Update the version

Find and update the version number in the appropriate file (package.json, pyproject.toml, version.txt, or equivalent). Update only the version field.

### Step 4: Update the changelog

Add an entry to CHANGELOG.md (create it if it does not exist) using this format:

```markdown
## [x.x.x] - YYYY-MM-DD

### Added
- [New features]

### Changed
- [Changes to existing features]

### Fixed
- [Bug fixes]
```

Keep entries concise. Focus on what changed for the user, not implementation details.

### Step 5: Commit

Stage only the version file and changelog:

```bash
git add [version file] CHANGELOG.md
git commit -m "chore: bump version to x.x.x"
```

### Step 6: Push and open a pull request

Push the branch and open a pull request with:
- A clear title: "Release x.x.x"
- A body that summarises the key changes from the changelog.

```bash
git push origin HEAD
gh pr create --title "Release x.x.x" --body "..."
```

### Step 7: Report back

Confirm:
- The version that was bumped.
- The pull request URL.
- Any open items that should be resolved before merging.

---

## Rules

- Never skip the changelog update.
- Never push directly to main without a pull request unless the user explicitly requests it.
- If the working tree has uncommitted changes unrelated to the release, flag them to the user before proceeding.
