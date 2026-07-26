# Contributing to idea-stress-test

Thanks for wanting to make this sharper. A few things up front so your PR lands well.

## This skill is deliberately adversarial

Its purpose is **to find the truth about an idea as cheaply as possible — not to flatter it.** It's the friend who asks the hard questions instead of cheering you on. Every contribution should protect that spirit. A change that makes the skill softer, more encouraging, or more likely to hand out a "GO" to be nice is moving in the wrong direction. When in doubt, ask: *does this help the user learn the truth for less time and money?*

## Good areas for PRs

These are where contributions help most:

- **More cheap-test patterns** — additions to the Phase 5 menu of 7-day, no-code experiments (concierge tests, fake doors, community probes for specific channels).
- **Sharper pushback prompts** — tighter, more honest questions for any phase, especially Phase 2 (who pays) and Phase 3 (what's already free), which kill the most bad ideas.
- **Domain-specific variants** — tailored gauntlets for B2B SaaS, consumer, and marketplace ideas, where the "who pays" and "why switch" dynamics differ meaningfully.
- **Research guidance** — improvements to `references/research-with-tools.md` for grounding Phase 3 in real data.

## How to test the skill locally

There's no build step — it's prompt + reference files. To test a change:

1. Install your working copy into Claude Code:
   ```bash
   git clone <your-fork> ~/.claude/skills/idea-stress-test
   ```
   (or symlink your checkout into `~/.claude/skills/idea-stress-test`).
2. Open a **fresh Claude Code session** so the skill loads clean.
3. Throw a **real idea** at it — something you'd actually weigh building. Watch two things:
   - **Trigger:** does the skill activate on natural phrasing ("should I build…", "стоит ли делать…")?
   - **Tone & flow:** does it push back honestly, walk the phases in order, and end with a clear GO / TEST-FIRST / NO-GO verdict and the report template?
4. Try a weak idea and a plausible one — the skill should comfortably say NO-GO when warranted and not over-award GO.

## Documentation is bilingual

The project ships two READMEs of equal standing: [`README.md`](README.md) in English and
[`README.ru.md`](README.ru.md) in Russian. They are not a source and a translation — both are
maintained, and a reader arriving in either language should get the whole picture without
switching.

If your PR changes anything user-facing (a phase, the verdict set, install steps, privacy
posture), update both. If you're comfortable in only one language, change that one and say so
in the PR description — a maintainer will carry it across rather than let the pair drift.

Behaviour changes also belong in [`CHANGELOG.md`](CHANGELOG.md) under `## [Unreleased]`.

## Pull request checklist

- Keep the adversarial, truth-seeking tone.
- Keep the report template and verdict format intact unless the PR is specifically about them.
- Don't add telemetry that sends idea content — see `references/telemetry.md` (opt-in, off by default, never the idea itself).
- Update both READMEs for user-facing changes, and add a `CHANGELOG.md` entry for behaviour changes.
- Explain in the PR description what idea(s) you tested the change against.

By contributing, you agree your work is licensed under the project's [MIT License](LICENSE).
