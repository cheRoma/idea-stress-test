# idea-stress-test

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Claude Skill](https://img.shields.io/badge/Claude-Skill-d97757.svg)](https://docs.anthropic.com/en/docs/claude-code/skills)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

A Claude skill that stress-tests a business idea **before** you build it — so you spend a week thinking instead of a quarter building the wrong thing.

It's the friend who asks the hard questions instead of saying "great idea, go for it." The skill forces any idea through a fixed gauntlet and ends with a plain **GO / TEST-FIRST / NO-GO** verdict.

## Example

> **You:** I want to build an app that reminds freelancers to send invoices.
>
> **Skill:** Who's the payer — and how do they track invoices today? *(Phase 2)* … Your accounting tool (FreshBooks, Wave-free) already nags about unpaid invoices inside the dashboard the freelancer opens daily. Why would they install a second app for one reminder? *(Phase 3)*
>
> **Verdict: NO-GO** — a free incumbent owns the core feature; no reason to switch.

> **You:** Стоит ли делать Telegram-бота, который собирает отзывы у гостей ресторана сразу после визита?
>
> **Skill:** Кто платит — владелец заведения, а страдает гость? Назовём обоих, продажа сложнее. *(Phase 2)* Риск: владельцы говорят «полезно», но платят ли? *(Phase 4)* 7-дневный тест: 5 предоплат по 1000₽ от реальных кафе. *(Phase 5)*
>
> **Verdict: TEST-FIRST** — гипотеза правдоподобна, но держится на непроверенной готовности платить.

## What it does

Walks your idea through six phases:

1. **Reframe** — restate the idea as a problem, not a solution, and challenge the framing.
2. **Who pays** — find the specific person who'd pay money, vs. people who merely say it's annoying.
3. **What's already free** — map existing alternatives (incl. the spreadsheet, the group chat, the giant's built-in feature) and answer *why would anyone switch?*
4. **Riskiest assumption** — name the one thing that, if false, sinks the idea.
5. **Cheapest 7-day test** — design the smallest no-code experiment that attacks that assumption.
6. **Kill criterion** — pre-commit to the result that means STOP, before you run the test.

Then it gives a verdict and a tight written report.

## Why

The most expensive startup mistake is building before validating. Planning *feels* like progress, so founders skip the part where they find out if anyone pays. This skill makes skipping validation harder than doing it.

## Install

**Claude Code:**
```bash
git clone https://github.com/cheRoma/idea-stress-test.git ~/.claude/skills/idea-stress-test
```
Then just talk to Claude about an idea you're weighing — the skill triggers on phrases like "should I build", "is this worth it", "validate my idea", "стоит ли делать".

**Claude.ai / Cowork:** upload the packaged `.skill` file.

## Optional: better research

If you have the [Perplexity MCP server](https://docs.perplexity.ai/docs/getting-started/integrations/mcp-server) installed in Claude Code, Phase 3 (competitor/alternatives research) uses it for sourced, current data instead of working from memory. Without it, the skill falls back to your client's built-in web search, or flags clearly when it's guessing. See `references/research-with-tools.md`.

## Privacy / telemetry

**Off by default. Nothing is collected or sent.** The repo ships a telemetry *spec* (`references/telemetry.md`), not a collector — and the spec forbids ever sending your actual idea, answers, or any identifying content. Your unproven ideas stay on your machine. Anyone forking this to add real telemetry must keep it opt-in and document the payload.

## Contributing

PRs welcome — this is meant to be improved by the community. Good areas: more cheap-test patterns, sharper pushback prompts, domain-specific variants (B2B SaaS, consumer, marketplaces). Keep the adversarial spirit: the skill exists to find the truth cheaply, not to flatter ideas.

## License

MIT. Free forever. Go kill some bad ideas early.

---

<sub>Разработка — [Ostov ↗](https://ostov.dev/?utm_source=github&utm_medium=readme&utm_campaign=signature&utm_content=idea-stress-test)</sub>
