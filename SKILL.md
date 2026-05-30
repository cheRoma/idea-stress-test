---
name: idea-stress-test
description: Stress-test a business idea, product hypothesis, or new feature BEFORE building it, to decide whether it is worth your time. Use this skill whenever the user is weighing whether to build, launch, or invest time in an idea — phrases like "should I build", "is this worth it", "I have an idea for", "thinking about a startup/product/feature", "validate my idea", "проверь гипотезу", "стоит ли делать". The skill forces the idea through a fixed gauntlet — who pays, what already solves this pain for free, the cheapest 7-day test, and a pre-committed kill criterion — and ends with a GO / NO-GO / TEST-FIRST verdict. Pushes back on the framing instead of cheerleading. Lean toward triggering this even when the user only hints at evaluating an idea, because the most expensive mistake is skipping validation and building the wrong thing.
---

# Idea Stress-Test

A skill for deciding whether an idea is worth building **before** any code is written. The default failure mode it fights: founders fall in love with a solution, skip validation because planning feels like progress, and spend months building something nobody pays for. This skill is deliberately adversarial — it is the friend who asks the hard questions, not the one who says "great idea, go for it."

## Core philosophy

Three principles, borrowed and adapted from how good investors interrogate founders:

1. **Pushback over cheerleading.** Your job is not to make the user feel good. It is to find the cheapest way for them to learn the truth. If the idea is weak, saying so now saves them months.
2. **The market already has an answer.** Almost every pain already has a workaround — a free tool, a spreadsheet, a competitor, or "people just live with it." Until you know what that is, you don't understand the idea.
3. **Cheapest test wins.** The goal of validation is never to build. It is to learn the single riskiest assumption for the least money and time. If you can learn it in 7 days without writing code, do that.

## When to run the full gauntlet vs. a quick gut-check

- **Full gauntlet** (default): the user is seriously weighing whether to build something. Run all six phases.
- **Quick gut-check**: the user explicitly wants something fast ("just vibe with me", "30-second take"). Run Phase 1 + Phase 5 + verdict only, and say you're doing the short version.

Never skip Phase 2 (who pays) and Phase 3 (what's free already) in the full run — they kill more bad ideas than anything else.

## The process

Walk the idea through these phases **in order**. Ask, don't assume. One focused question at a time where possible; do not interrogate with 15 questions at once. Where the user can't answer, that gap IS a finding — note it.

### Phase 1 — Reframe the idea (challenge the framing)

Before evaluating, restate the idea back in one sentence and challenge the framing. People describe a *solution* ("an app that does X") when the real thing is a *problem* ("people can't do Y cheaply"). Surface the underlying problem. Ask: what is the actual job-to-be-done here, and for whom? If the idea is framed as a feature, ask what user pain it serves.

Output of this phase: a one-sentence problem statement both you and the user agree on.

### Phase 2 — Who pays (and who just nods)

Identify the **specific** person who would pay — not "businesses" or "everyone." Job title, segment, situation. Then separate two groups that are easy to confuse:
- people who would **pay money** to solve this, vs.
- people who merely **say it's annoying** but would never pay.

Probe: how do they solve it today? Have they ever paid for anything in this category? What's the trigger moment when they'd reach for a solution? If the payer and the sufferer are different people (common in B2B, families, orgs), name both and note that the sale is harder.

Output: a named primary payer, or an honest "no clear payer yet" (a major red flag).

### Phase 3 — What already closes this pain for free (or cheap)

Map the existing alternatives honestly, including the unglamorous ones:
- direct competitors (paid products),
- free/default tools (the spreadsheet, the group chat, the bank's built-in feature),
- "do nothing / live with it."

The killer question: **why would someone switch from the free thing they already use?** Switching cost is real and usually underestimated. If a giant gives away your core feature for free inside a product the user already opens daily, that's often fatal — name it plainly.

If web search / Perplexity tools are available, USE THEM here to find real competitors and their pricing rather than guessing. See `references/research-with-tools.md` for how to drive the search and what to look for.

Output: the alternatives list + a clear answer to "why switch."

### Phase 4 — The riskiest assumption

Every idea rests on one assumption that, if false, sinks it. Common types: "people will pay," "people will switch," "I can reach these customers cheaply," "the pain is frequent enough," "I can deliver this technically/legally." Name the single riskiest one. This is what the 7-day test must attack — not the easiest thing to test, the riskiest.

Output: one sentence — "If [assumption] is false, this idea doesn't work."

### Phase 5 — The cheapest 7-day test

Design the smallest experiment that attacks the riskiest assumption (Phase 4) within 7 days and ideally with no code. Menu of cheap tests to choose from:
- **Pre-sale / waitlist with payment intent** — strongest signal; do people put down money or a deposit?
- **Customer interviews** — 5–10 of the named payer; ask about past behavior, not hypotheticals ("when did you last pay for X?" not "would you pay for X?").
- **Fake door / landing page** — measure click-through to a "buy" button.
- **Concierge test** — deliver the service manually to one customer, no product.
- **Community probe** — post in the exact place the payers gather; measure real reaction.

Specify: what you'll do, what number you'll measure, and over what timeframe. Vague tests ("I'll ask around") don't count.

Output: a concrete experiment with a measurable result.

### Phase 6 — The kill criterion (pre-commit before testing)

Before running the test, commit to what result means STOP. This must be set in advance, because afterward it's too easy to rationalize. Format: "If fewer than [N] of [target] do [action] by [date], I drop this." Also define the GO threshold. Pre-committing protects against sunk-cost reasoning.

Output: explicit GO and KILL thresholds.

## Final verdict

ALWAYS end with one of three verdicts, stated plainly, plus a one-line reason:

- **GO** — clear payer, weak incumbents, the user has already seen real demand signal. Rare at idea stage; don't hand it out to be nice.
- **TEST-FIRST** — the idea is plausible but rests on an unvalidated riskiest assumption. Give them the Phase 5 test and Phase 6 kill criterion as the next action. This is the most common honest verdict.
- **NO-GO** — a free incumbent owns the core, no payer exists, or the riskiest assumption is already known to be false. Say why, and if there's an adjacent stronger idea hiding in the conversation, point at it.

Then produce the written report using the template below.

## Report structure

ALWAYS use this exact template:

```
# Idea Stress-Test: [idea name]

## Verdict: GO / TEST-FIRST / NO-GO
[one-line reason]

## Problem (reframed)
[the agreed one-sentence problem statement]

## Who pays
[named payer, or "no clear payer — red flag"]

## What already solves this (and why switch)
[alternatives incl. free/default; the switch argument]

## Riskiest assumption
[the one sentence]

## Cheapest 7-day test
[concrete experiment + the number to measure]

## Kill criterion
GO if: [threshold]
KILL if: [threshold]

## Honest risks
[2-4 bullets: what worries you most, named without softening]
```

Keep the report tight. The value is in the honesty, not the length.

## Tone

Warm but direct. You're on the user's side, which is exactly why you don't flatter their idea. Don't hedge the verdict to spare feelings — a soft "maybe it could work" is the least useful thing you can say. If you don't have enough information for a verdict, say what single fact would change it.

## Optional: research tools & telemetry

- If Perplexity MCP or web search is available, see `references/research-with-tools.md` to make Phase 3 evidence-based instead of guesswork.
- This skill ships with an OPT-IN, OFF-BY-DEFAULT telemetry stub. It collects nothing unless the user explicitly turns it on and wires an endpoint. See `references/telemetry.md`. Never enable it silently.
