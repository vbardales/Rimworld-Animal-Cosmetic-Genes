# Animal Cosmetic Genes: tests

One scenario per promised behaviour. Pickle scenarios are in `Tests/Pickle/Mod/Pickle/Features/`, run through the ticket queue, never by hand. Runs and results: `Docs/runs/`. Green proofs kept: `Tests/Pickle/Evidence/` (out of git).

## Behaviours and scenarios

| Behaviour promised | Scenario (feature) | Expected |
|---|---|---|
| The mod loads with no error | acg-load-clean (acg-serum-apply) | no error logged at the menu; the tint traits and the gene table exist |
| A colour trait tints an animal's coat (Thrumbo, cat, Labrador, panther) | acg-coat-thrumbo, acg-coat-cat, acg-coat-labrador, acg-coat-panther (acg-coat-traits) | the hediff is added, the coat colour changes, removing it gives the coat back |
| Every colour gene gives a trait | acg-gene-tint-thrumbo, acg-gene-tint-cat (acg-gene-tints) | a trait generated from a gene tints the animal |
| The serum bench exists and offers the serum recipe | acg-serum-bench-recipe (acg-serum-bench) | def exists, recipe available at the bench, a bill allows Genepack |
| A genepack goes in a bill, a serum comes out, a colonist applies it | acg-serum-bench-chain (acg-serum-bench) | bench built, serum made, "Apply chest patch" picked on Kuru1, the trait is held |
| A colonist applies a serum to an animal | acg-serum-apply (acg-serum-apply) | the animal holds the trait, the serum is gone |
| A second coat tint is refused | acg-serum-second-tint-refused (acg-serum-apply) | the float menu offers no second tint |
| The chest patch is drawn on the cat Kuru | acg-chest-patch-kuroneko (acg-chest-patch) | white patch on the chest, south, east and west, paws free |

## Automated checks, replayed 2026-11-06 at 2a3846c (Source last changed 1c5278d)

- Unit tests (`Run-UnitTests.ps1`): AtsRules, all passed, 0 warnings (refusal reasons are Keyed keys: the tests check the key and the clash).
- Build (`Build-Mod.ps1 -Check`): 0 warnings, 0 errors, DLL same as sources.
- XML: every file of `Mod/` parses; `Check-DefRefs.ps1` resolves every ParentName; `Check-XmlFields.ps1` reports only the Animal Traits System fields (known noise, its DLL is not loaded by the checker).
- `Check-Translations.ps1`: PASS (503 source texts, 6 Keyed calls). `Check-ModBasics.ps1`: 0 errors, one WARN (About description must end with the GitHub source link, `writeDocs`).
- `Tests/Test-Mod.ps1` (shared checks, then `Tests/Rule-OwnValues.ps1`, 9 rules): 6 of 6 pass.
- `Check-Steps.ps1`: 6 feature files parse (19 scenarios), 376 step lines resolve, none declared twice. Every suite carries its `@requires` tags.

## Not applicable

- Settings: the mod has none (`settings_audit: not_applicable`, STATUS.md).
- Other cat mods than Let's Have a Cat! Continued: the chest patch is for Kuru only in 1.0.0 (backlog).

## Not tested

- Scenarios older than the last Source change (1c5278d) need a small replay at playTests: acg-serum-bench-recipe, acg-serum-second-tint-refused, acg-coat-thrumbo, acg-coat-labrador, acg-coat-panther, acg-gene-tint-thrumbo, acg-chest-patch-kuroneko, acg-serum-bench-look.
- The refusal texts in French (float menu, message) in game: playTests.
- Raw keys and clipped text in French: playTests.
