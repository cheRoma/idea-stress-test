# Changelog

All notable changes to this project are documented here.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.0] — 2026-07-26

### Changed

- **The interview loop now runs on two explicit rules.** Both live in the `## The process`
  preamble of `SKILL.md` and govern every question the skill asks:
  - *Look facts up, ask only for decisions.* Anything discoverable from the environment
    (filesystem, codebase, git history, a competitor's pricing page, a search tool) gets
    researched rather than recited by the user. Judgement, priorities and appetite stay
    with the user.
  - *Never ask a bare question.* Every question now carries a recommended answer and the
    reasoning behind it, so the user can nod or correct instead of facing a blank page —
    including when the skill is unsure, in which case it flags the uncertainty and commits
    to a guess anyway.

  Together these cut the cost of each answer and surface disagreement earlier.

### Added

- Full Russian documentation ([`README.ru.md`](README.ru.md)) alongside the English README,
  with a language switcher on both.
- `build.sh` — packages the skill into `idea-stress-test.skill` for Claude.ai / Cowork
  upload. The README promised a packaged artifact that the repo had no way to produce.
- This changelog.

## [1.0.0] — 2026-05-30

### Added

- Initial public release.
- Six-phase gauntlet: reframe, who pays, what's already free, riskiest assumption,
  cheapest 7-day test, kill criterion.
- `GO / TEST-FIRST / NO-GO` verdict plus a fixed report template.
- Full-gauntlet and quick gut-check modes.
- [`references/research-with-tools.md`](references/research-with-tools.md) — grounding
  Phase 3 in real competitor data, with cost discipline for Perplexity MCP calls.
- [`references/telemetry.md`](references/telemetry.md) — an opt-in, off-by-default
  telemetry contract that forbids transmitting idea content. Spec only; no collector ships.
- MIT license, contribution guide, code of conduct, issue and pull request templates.

[1.1.0]: https://github.com/cheRoma/idea-stress-test/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/cheRoma/idea-stress-test/releases/tag/v1.0.0
