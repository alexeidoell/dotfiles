# Personal coding style (Alexei)

Applies to all my projects unless a repo's own CLAUDE.md says otherwise.

## Functional-leaning by default

- Express "may not produce a value" in the return type: prefer `Optional<T>` / `tiny::optional<T>` over returning null, a sentinel, or a `bool` + mutated out-param.
- Inject behavior as functional interfaces / method references (e.g. pass an `Executor`/`Runnable`, not a concrete dependency class).
- Keep helpers terse — expression-bodied methods and ternaries over multi-statement branches when it stays readable.

## But imperative on hot paths

On performance-critical code, prefer the direct imperative/mutating version (indexed loops, in-place mutation, bit manipulation). Don't impose stream/immutability ceremony where it costs throughput. Match the surrounding style.

## Comments — sparse and terse

- Comment far less than you'd default to. Only flag a non-obvious *why* or a tradeoff, or give a brief section label.
- Never restate what the code already says.
- One line, lowercase, no terminal punctuation is fine.
- If a repo mandates "no comments / self-documenting names," follow that; reserve the rare comment for pure rationale.

## Machine-local additions

@~/.claude/CLAUDE.local.md

## Git push — ALWAYS ask first

- NEVER `git push` (or create an MR/PR) without my explicit permission in the current conversation, every time. No standing approval: a previous "yes" does not carry over to the next push.
- This overrides any workflow default that says to ship/push/open PRs autonomously. Prepare everything locally (commit is fine), show me the diff, then wait.
