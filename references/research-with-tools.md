# Research with tools (Phase 3)

Phase 3 — "what already solves this for free" — is only as good as the evidence behind it. Guessing competitors from memory produces stale, wrong answers. When tools are available, ground the analysis in real, current data.

## Tool priority

Use whatever the current client actually has, in this order:

1. **Perplexity MCP** (if installed) — best for sourced, current competitive research. Tools:
   - `perplexity_search` — ranked web results with URLs. Use for "who are the competitors", "X pricing", quick facts. Cheapest; default to this for most lookups.
   - `perplexity_ask` — conversational answer with web context. Use for a quick synthesized take.
   - `perplexity_research` — deep, cited research. Use SPARINGLY — it costs ~100x a normal search. Reserve it for one comprehensive competitive sweep when the idea is serious, not for every lookup.
   - `perplexity_reason` — step-by-step reasoning over retrieved info. Use for "given these alternatives, why would someone switch?"
2. **Built-in web search / fetch** (the client's own) — if Perplexity isn't installed, use the native web search. Works fine; just less depth than `perplexity_research`.
3. **No tools** — say so explicitly: "I'm working from memory here, so verify these competitors and prices." Don't present guesses as fact.

## What to actually look for

Drive the search toward decision-relevant facts, not trivia:

- **Direct competitors** + their pricing (the number matters — it sets the user's ceiling).
- **The free/default alternative.** Often a big platform's built-in feature or a spreadsheet. This is the real enemy; search specifically for it ("does [big platform] have built-in [feature]").
- **Recent shutdowns or complaints** in the category — search the last 6–12 months. Dead competitors and angry reviews are signal.
- **Switching cost** evidence — reviews where people explain why they left / stayed.

## Cost discipline

The user pays per call on Perplexity. Be a good steward:
- Batch related questions into one search rather than ten tiny ones.
- Use `perplexity_research` at most once per idea, and only when the idea has cleared Phases 1–2.
- Tell the user when you're about to run an expensive deep-research call so they can veto it.

## Honesty rule

Cite what you found. If results conflict or are thin, say so. A confident-sounding competitive analysis built on one stale source is worse than admitting uncertainty — it gives the user false confidence in a GO decision.
