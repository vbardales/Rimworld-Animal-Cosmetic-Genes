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
| Serum liquid takes the colour of its gene tint (1.2.0), turquoise for a marking | acg-serum-tint-look (acg-serum-apply) | capture: three vials (Skin_Blue, Skin_Orange, ACG_ChestPatch), three liquid colours; no error logged |
| Second coat tint refused | acg-serum-second-tint-refused (acg-serum-apply) | float menu offers no second tint |
| Second coat tint refused, French menu | acg-serum-second-tint-refused-fr (acg-serum-apply) | French copy, step matches French float menu label |
| Chest patch drawn on cat Kuru | acg-chest-patch-kuroneko (acg-chest-patch) | white patch on chest, south, east and west, paws free |

## Automated checks, current revision (published 1.1.0, Source and Mod last changed fa88ffe, replayed 2026-11-13)

- Unit tests (`Run-UnitTests.ps1`): AtsRules, all passed.
- `Check-Translations.ps1`: PASS (503 source texts plus 1 nested, 6 Keyed calls). `Check-ModBasics.ps1`: 19 XML files, 254 defs, PASS, one WARN (About description must end with the GitHub source link).
- `Tests/Test-Mod.ps1` (shared checks, then `Tests/Rule-OwnValues.ps1`): 6 of 6 pass.
- `Check-Steps.ps1`: 7 feature files parse (26 scenario blocks), 661 step lines resolve, none declared twice.
- Pickle non-regression of the published 1.1.0 (2026-11-12, 1.6): English 9 of 9 (ticket c6b2), French 2 of 2 (ticket d5d0), proofs in `Tests/Pickle/Evidence/nonreg-110-en` and `nonreg-110-fr`.

## Not applicable

- Settings: mod has none (`settings_audit: not_applicable`, STATUS.md).
- Cat mods other than Let's Have a Cat! Continued: chest patch for Kuru only (backlog).
