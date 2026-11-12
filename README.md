<div align="center">

# idea-stress-test

**A Claude skill that interrogates your idea before you build it.**

Spend a week thinking instead of a quarter building the wrong thing.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Claude Skill](https://img.shields.io/badge/Claude-Skill-d97757.svg)](https://docs.anthropic.com/en/docs/claude-code/skills)
[![Version](https://img.shields.io/badge/version-1.1.0-blue.svg)](CHANGELOG.md)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

**English** · [Русский](README.ru.md)

</div>

---

Most idea-validation tools are flattery machines. You describe your idea, they list ten reasons it could work, and you walk away more confident and no better informed.

This one does the opposite. It is the friend who asks the hard questions instead of saying *"great idea, go for it"* — and it ends every session with a plain **GO / TEST-FIRST / NO-GO** verdict you can act on.

## Table of contents

- [See it work](#see-it-work)
- [The gauntlet](#the-gauntlet)
- [How it asks](#how-it-asks)
- [Install](#install)
- [Using it](#using-it)
- [What it will not do](#what-it-will-not-do)
- [Better research (optional)](#better-research-optional)
- [Privacy](#privacy)
- [FAQ](#faq)
- [Contributing](#contributing)
- [License](#license)

## See it work

> **You:** I want to build an app that reminds freelancers to send invoices.
>
> **Skill:** Who's the payer — and how do they track invoices today? *(Phase 2)* … Your accounting tool (FreshBooks, Wave-free) already nags about unpaid invoices inside the dashboard the freelancer opens daily. Why would they install a second app for one reminder? *(Phase 3)*
>
> **Verdict: NO-GO** — a free incumbent owns the core feature; no reason to switch.

That conversation costs five minutes. The version where you find out by shipping costs three months.

A plausible idea gets a different answer:

> **You:** Should I build a Telegram bot that collects feedback from restaurant guests after a visit?
>
> **Skill:** The owner pays, but guests have to use it. What does each get out of it? *(Phase 2)* Owners may call it useful without being willing to pay. *(Phase 4)* Test that in seven days: ask five real cafes to prepay for a pilot at a price agreed in advance. *(Phase 5)*
>
> **Verdict: TEST-FIRST** — plausible, but willingness to pay is still untested.

The skill answers in whatever language you write in.

## The gauntlet

Six phases, always in order. Phases 2 and 3 kill more bad ideas than everything else combined, and the skill never skips them.

| # | Phase | The question it forces | What comes out |
|---|-------|------------------------|----------------|
| 1 | **Reframe** | Is this a problem or just a solution you like? | A one-sentence problem statement you both agree on |
| 2 | **Who pays** | Who *specifically* opens their wallet — not who merely nods? | A named payer, or an honest "no payer yet" (a red flag) |
| 3 | **What's already free** | Why would anyone leave the spreadsheet, the group chat, or the giant's built-in feature? | The real alternatives, and the switch argument |
| 4 | **Riskiest assumption** | What single belief, if false, sinks this? | One sentence: *"If X is false, this doesn't work."* |
| 5 | **Cheapest 7-day test** | How do you learn that for the least time and money — ideally with no code? | A concrete experiment with a number to measure |
| 6 | **Kill criterion** | What result means STOP — decided *before* you look? | Explicit GO and KILL thresholds |

Then a verdict and a tight written report:

- **GO** — clear payer, weak incumbents, real demand signal already seen. Rare at idea stage, and deliberately hard to earn.
- **TEST-FIRST** — plausible, but resting on an unvalidated assumption. The most common honest answer.
- **NO-GO** — a free incumbent owns the core, no payer exists, or the riskiest assumption is already known to be false.

In a hurry? Say *"just give me a 30-second take"* and it runs a short version — reframe, cheapest test, verdict — and tells you it did.

## How it asks

Two rules shape every question, and they are what make the interview bearable:

**It looks facts up instead of quizzing you.** Anything discoverable — your filesystem, a codebase, git history, a competitor's pricing page, a web search — it goes and finds. What you get asked about is the part only you can answer: judgement, priorities, appetite, your own situation.

**It never asks a bare question.** Compare *"who pays for this?"* with *"I'd guess the payer is the ops manager, not the end user, because they hold the budget — right?"* The first hands you a blank page; the second needs a nod or a correction. Corrections carry more information than blank-page answers, so the skill commits to a guess even when it is unsure — and flags that it is unsure.

One question at a time. Never fifteen at once.

## Install

### Claude Code

```bash
git clone https://github.com/cheRoma/idea-stress-test.git ~/.claude/skills/idea-stress-test
```

Start a fresh session. That's it — no build step, no dependencies. The skill is prompt plus reference files.

### Claude.ai / Cowork

Build the packaged skill and upload it in the UI:

```bash
git clone https://github.com/cheRoma/idea-stress-test.git
cd idea-stress-test
./build.sh          # → idea-stress-test.skill
```

### Updating

```bash
cd ~/.claude/skills/idea-stress-test && git pull
```

## Using it

You don't have to invoke anything. Just talk about an idea you're weighing:

- *"Should I build a CRM for dog groomers?"*
- *"Is this worth my time?"*
- *"I have an idea for a Slack app that…"*
- *"Should I build a delivery service for independent bakeries?"*
- *"Test this idea: a tool-rental subscription."*

The skill leans toward triggering even on a hint, because the expensive mistake is skipping validation, not running it unnecessarily. To summon it explicitly, use `/idea-stress-test`.

It works on features too, not just companies — *"should we build SSO into the admin panel?"* runs the same gauntlet with a smaller blast radius.

## What it will not do

Stated plainly, because a tool that overpromises is its own failure mode:

- **It won't tell you your idea is good to make you feel better.** GO is rare by design.
- **It won't do your market research for you.** With web tools it grounds Phase 3 in real sources; without them it says it's working from memory rather than dressing guesses as facts.
- **It won't replace talking to customers.** Most sessions end by sending you to talk to five of them. That's the point.
- **It won't write your PRD or your code.** It decides whether either is worth writing.

## Better research (optional)

Phase 3 is only as good as the evidence under it. With the [Perplexity MCP server](https://docs.perplexity.ai/docs/getting-started/integrations/mcp-server) installed, the skill pulls sourced, current competitor and pricing data — and it's disciplined about cost, batching lookups and reserving the expensive deep-research call for ideas that have already cleared Phases 1–2.

Without it, the skill falls back to your client's built-in web search, and if it has nothing at all it says so out loud. Details in [`references/research-with-tools.md`](references/research-with-tools.md).

## Privacy

**Off by default. Nothing is collected. Nothing is sent.**

The repo ships a telemetry *specification* ([`references/telemetry.md`](references/telemetry.md)), not a collector — and that spec forbids ever transmitting your idea, your answers, competitor names, prices, or anything identifying. People feed this skill their unborn businesses, which is the most sensitive thing a founder has. Those stay on your machine.

Anyone forking this to add real telemetry must keep it opt-in, default it off, and document the payload publicly.

## FAQ

**Does it work outside Claude Code?**
The gauntlet is plain prompt text, so it works anywhere you can load a skill or paste a system prompt. Claude Code gets the most out of it, because that's where the skill can go read your files and run searches instead of asking you.

**It gave me NO-GO and I disagree.**
Good — argue with it. The verdict is an input to your decision, not a ruling. If you can name the payer and explain why they'd leave the free alternative, say so and it will re-run the phase. What you shouldn't do is quietly downgrade the verdict to "maybe" and start building.

**Why seven days?**
Long enough for a real signal, short enough that you haven't fallen in love with the plan. Any test that needs a month is usually a build in disguise.

**Can I use it on a feature instead of a startup?**
Yes. "Who pays" becomes "whose problem is this, and is it worth the roadmap slot."

**Does it need an API key or a subscription?**
No. It's prompt plus reference files under MIT.

## Contributing

PRs welcome — see [CONTRIBUTING.md](CONTRIBUTING.md) for good areas and how to test a change locally.

One rule above all: **keep it adversarial.** A change that makes the skill softer, more encouraging, or quicker to hand out a GO is moving in the wrong direction. Ask of every edit: *does this help someone learn the truth for less time and money?*

## License

[MIT](LICENSE). Free forever. Go kill some bad ideas early.

---

<div align="center">
<sub>Built by <a href="https://ostov.dev/?utm_source=github&utm_medium=readme&utm_campaign=signature&utm_content=idea-stress-test">Ostov ↗</a></sub>
</div>
