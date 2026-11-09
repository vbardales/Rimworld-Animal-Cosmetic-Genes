# Animal Cosmetic Genes: tests

One scenario per promised behaviour. Pickle scenarios in `Tests/Pickle/Mod/Pickle/Features/`, run through ticket queue, never by hand. Runs and results: `Docs/runs/`. Green proofs kept: `Tests/Pickle/Evidence/` (out of git).

## Behaviours and scenarios

| Behaviour promised | Scenario (feature) | Expected |
|---|---|---|
| Mod loads with no error | acg-load-clean (acg-serum-apply) | no error logged at menu; tint traits and gene table exist |
| Colour trait tints animal's coat (Thrumbo, cat, Labrador, panther) | acg-coat-thrumbo, acg-coat-cat, acg-coat-labrador, acg-coat-panther (acg-coat-traits) | hediff added, coat colour changes, removing it gives coat back |
| Every colour gene gives a trait | acg-gene-tint-thrumbo, acg-gene-tint-cat (acg-gene-tints) | trait generated from gene tints animal |
| Serum bench exists and offers serum recipe | acg-serum-bench-recipe (acg-serum-bench) | def exists, recipe available at bench, bill allows Genepack |
| Genepack goes in bill, serum comes out, colonist applies it | acg-serum-bench-chain (acg-serum-bench) | bench built, serum made, "Apply chest patch" picked on Kuru1, trait held |
| Colonist applies serum to animal | acg-serum-apply (acg-serum-apply) | animal holds trait, serum gone |
| Second coat tint refused | acg-serum-second-tint-refused (acg-serum-apply) | float menu offers no second tint |
| Second coat tint refused, French menu | acg-serum-second-tint-refused-fr (acg-serum-apply) | French copy, step matches French float menu label |
| Chest patch drawn on cat Kuru | acg-chest-patch-kuroneko (acg-chest-patch) | white patch on chest, south, east and west, paws free |

## Automated checks, replayed 2026-11-06 at 2a3846c (Source last changed 1c5278d)

- Unit tests (`Run-UnitTests.ps1`): AtsRules, all passed, 0 warnings (refusal reasons are Keyed keys: tests check key and clash).
- Build (`Build-Mod.ps1 -Check`): 0 warnings, 0 errors, DLL same as sources.
- XML: every file of `Mod/` parses; `Check-DefRefs.ps1` resolves every ParentName; `Check-XmlFields.ps1` reports only Animal Traits System fields (known noise, its DLL not loaded by checker).
- `Check-Translations.ps1`: PASS (503 source texts, 6 Keyed calls). `Check-ModBasics.ps1`: 0 errors, one WARN (About description must end with GitHub source link, `writeDocs`).
- `Tests/Test-Mod.ps1` (shared checks, then `Tests/Rule-OwnValues.ps1`, 9 rules): 6 of 6 pass.
- `Check-Steps.ps1`: 6 feature files parse (19 scenarios), 376 step lines resolve, none declared twice. Every suite carries its `@requires` tags.

## Not applicable

- Settings: mod has none (`settings_audit: not_applicable`, STATUS.md).
- Cat mods other than Let's Have a Cat! Continued: chest patch for Kuru only in 1.0.0 (backlog).

## Not tested

- Scenarios older than last Source change (1c5278d) need small replay at playTests: acg-serum-bench-recipe, acg-serum-second-tint-refused, acg-coat-thrumbo, acg-coat-labrador, acg-coat-panther, acg-gene-tint-thrumbo, acg-chest-patch-kuroneko, acg-serum-bench-look.
- Refusal texts in French (float menu, message) in game: playTests.
- Raw keys and clipped text in French: playTests.