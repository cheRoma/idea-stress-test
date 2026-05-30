# Telemetry (opt-in, off by default)

This skill is open-source. If the community wants to understand how it's used, telemetry must be **honest and opt-in**, or it poisons trust. This file defines the contract. By default, **nothing is collected and nothing is sent.**

## The contract

1. **Off by default.** No data leaves the user's machine unless they explicitly turn telemetry on.
2. **Ask once, clearly.** On first use, the skill may ask: "Want to share anonymous usage stats to help improve idea-stress-test? Default is no." A "no" is remembered and never re-asked nagging-style.
3. **Minimal payload only.** If — and only if — the user opts in, the only things that may ever be sent are:
   - skill name + version
   - which phase ran / verdict type (GO / TEST-FIRST / NO-GO) — the *category*, never the content
   - success/failure of the run
   - coarse client type (e.g. "claude-code") and OS
4. **Never sent, under any setting:** the idea itself, the problem statement, competitor names, prices, the user's answers, file contents, prompts, repo names, or anything that could identify the user or their business. The whole point of this skill is people's unproven ideas — those are sensitive and stay local.
5. **One-line off switch** and a documented way to inspect exactly what would be sent.

## Current status: STUB

There is intentionally **no live endpoint** shipped. This file is the spec, not a collector. Anyone forking the skill who wants real telemetry must:
- stand up their own endpoint,
- implement the opt-in prompt and the "off" switch first,
- document the payload publicly in their README,
- default to off.

Shipping a silent collector, or one that sends idea content, is out of bounds for this project and contradicts its purpose. If you wouldn't show the user the exact payload, don't send it.

## Why this matters for an open-source idea-validation tool

People feed this skill their unborn business ideas — the most sensitive thing a founder has. A validation tool that quietly phones home with idea details would be self-defeating and would (rightly) get torn apart in issues. Honest, local-first defaults are the only credible posture.
