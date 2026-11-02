---
mod: Animal Cosmetic Genes
packageId: nelim.animalcosmeticgenes
repo: Rimworld-Animal-Cosmetic-Genes
remote: https://github.com/vbardales/Rimworld-Animal-Cosmetic-Genes.git
visibility: public             # original creation, nothing taken from another mod (PUBLISHING.md, "Nommage")
detached: yes
workflow_stage: playTests[1.0.0]
licence: original
licence_at: "2026-10-31: original work, MIT (LICENSE and Mod/LICENSE). No third-party code: Animal Traits System (Luved) is a dependency only, Gene Freedom (FarmerJoe) was disassembled to study, nothing copied."
upstream_mod_remotes: N/A      # no source mod: Big and Small, Gene Freedom and Animal Traits System gave the idea or the framework only, none of their code is used
settings_audit: not_applicable
localization: complete
translation_en: complete
translation_fr: complete
dependencies: done
workshop: none
published: no
tested_on: "2026-11-02 (Pickle, English and French, Mod/ and Source/ unchanged since 26b83d1; green tickets 6184, 7f31, 6146, 6c3b, ba7f, 0f31, 989d, 8805; still unverified: clipped French text beyond the float menu, gene icon)"
remaining:
  - "2026-11-02: CODE REVIEW (8.m, Opus sub-agent, whole Source/ and Mod/Defs, no prior sha) done at 4616d5f. Fixed in 4616d5f: (1) unmapped genepack could be eaten at the bench for no serum (ingredient filter now disallows ACG_UnmappedGenepack too; to prove: unverified, no scenario with an unmapped genepack), (2) float menu offered when the animal cannot be reserved, (4) job did not fail when the animal left the faction. Logged, not fixed, not blocking 1.0.0: (3) serum def inherits GeneSetHolderBase (Biotech genepack fields, check in game that it is not in genepack storage filters), (5) null gene or trait in a GeneTraitMapDef not guarded, (6) refusal reasons in AnimalTraitGrant and AtsRules are hardcoded English (French players see English in the float menu and messages: a translation defect, to fix at a return to localize or before publication), (7) render node size ignores femaleGraphicData, (8) render node checks only the _south texture, (9) a serum that cannot be placed is lost, (10) CoatEmber, CoatFrost, CoatAsh have no gene and can never be obtained, (11) generated tint traits have no exclusiveWithAnimalTrait list so inheritance can stack two tints. Source/ and Mod/ changed after the last green runs: replay as a small ticket: 6352 queued at 4616d5f (acg-serum-bench-chain, acg-serum-apply, acg-load-clean, evidence Tests/Pickle/Inbox/review-fixes); at RUN_DONE read summary.json, then replay acg-serum-bench-chain-fr and acg-labels-en/fr if the chain is green. Still open for 8.i: clipped French text beyond the float menu, gene icon; 8.n after that."
  - "2026-11-02: history of remaining (spikes, decisions, ATS findings, gene source, runs 2026-10-31 to 2026-11-02) moved to Docs/runs/2026-11-02-status-journal.md; the open items are the lines below."
  - "2026-11-02: DONE, 1.0.0 features closed (owner art in, tickets green): coat tint traits by gene colour (generated), serum bench, serum and apply chain (6184, 7f31, 6146), chest patch marking (6c3b, three facings read). Eye render nodes and per-breed marking art for other animals are NOT in 1.0.0 (eyes stay phase 2, owner 2026-11-02). Unjudged and not blocking: bench cost, WorkToBuild 3000, workAmount 800. Open for later stages: Biotech as a declared dependency (declareDependencies), French texts (localize)."
  - "2026-11-02: BACKLOG (owner, after 1.0.0, not in 1.0.0): tint the serum item by the colour of its gene (today one turquoise vial for all 241 traits). Ground: AnimalTraitSerum already stores the gene, the item can carry a DrawColor; needs a small C# override of the item colour plus a grey-scale vial texture so the tint reads (the current vial is already turquoise). Check first: the tint on the generated colour genes only, markings keep the vial as is."
  - "2026-11-02: DEPENDENCIES (4.a to 4.g, owner: Biotech hard): required Animal Traits System luved.animaltraits (3652630316) and Biotech Ludeon.RimWorld.Biotech (genes, genepacks, Xenogermination), both in modDependencies and loadAfter with Core. Let's Have a Cat! Continued (akairo.LetsHaveaCat, 3682940618) is NOT declared: Markings.xml only lists akaNEKO_kuroneko as text in occurOnlyInAnimals, no def reference, so the chest patch just never applies without it; no MayRequire needed. No LoadFolders.xml, supportedVersions 1.6 only. Not an animal mod, 4.f n/a. sort-load-order.py not run (needs a staged Mods dir): the order is by reading, the mod only loads after ATS, Core and Biotech and nothing depends on it, so no cycle is possible. Revision: HEAD at commit of this line."
  - "2026-11-02: BACKLOG (owner, after 1.0.0, not in 1.0.0): chest patch for every cat mod, not only Kuru (akaNEKO_kuroneko). Method, as the breeding mods do (Dogs mate 2441132298 AnimalGroupDef Felidae.xml, Better Crossbreeding 3520675842 Example/Patches): (1) an explicit XML list of animal defs, a def of ours that other mods extend by patch, replacing the hard occurOnlyInAnimals of Kuru; vanilla Cat and the popular cat mods added by PatchOperationFindMod patches; optional read of the Dogs mate Cat group when installed. (2) the marking drawn from the animal sprite (silhouette measured per facing, bib at fixed proportions taken from the validated Kuru masks, clipped to the silhouette) instead of one texture set per def; a texture shipped by a mod stays first. Check first: how vanilla Cat and the other cat mods draw their sprites (same pose as Kuru?); test on two cats at least. Kuru's textures stay the reference."
  - "2026-11-02: writeTests done (7.a to 7.h) at revision 1ad3f61: TESTING.md lists one scenario per behaviour; unit tests AtsRules pass, build 0 warnings and DLL SAME, XML parse and DefRefs clean (XmlFields: only the Animal Traits System noise), Check-Translations PASS, Check-Steps clean (16 scenarios). Pickle proofs in Tests/Pickle/Evidence are all green on the current C# (Source last changed in c622863); the Mod/ changes since (textures, French, labels) are covered by 6c3b and 6146 for the chest patch, the bench chain and the serum. 2026-11-02 playTests: tickets ba7f (English) and 0f31 + 989d (French) at 900f204: coat-cat, gene-tint-cat and the bench chain pass in both languages, no raw key on the captures, no ACG error in the log (proofs acg-labels-en, acg-labels-fr, acg-serum-bench-chain-fr). Scenario acg-serum-bench-chain-fr added: the float menu step matches the label of the game language. Still unverified: clipped text in the French UI beyond the float menu; gene icon (no step frames it). Ticket 8805 green (scenario acg-serum-bench-look, 1 of 1, 106 s): captures acgbench-look-bench and acgbench-look-serum read (bench with its parts, turquoise vial on the bed, no raw key), minified in Evidence/acg-serum-bench-look. Virginie validated the look of the bench and the serum on 2026-11-02 (validated as is, one turquoise vial for all traits accepted for 1.0.0)."
code_review_sha: 4616d5fb86c239438b6ffb2e342fdedba7d53d47
updated: 2026-11-02
protocols_read_sha: a03dcfe2525258107c98e3ce1ce32a486456d4c3
---

# Animal Cosmetic Genes: status

Current state only: the front matter above is the source of truth, run lines go to `docs/runs/`.
Check it with `scripts/Check-Status.ps1 -Mod AnimalCosmeticGenes` (no ERROR) before the commit that leaves the monorepo.

## State

Moved to `makeSources` on 2026-10-31. Repository skeleton created on 2026-10-31 on the owner's order (variant A of the study: depends on Animal Traits System, with a gene giving an animal a trait). No code, no art, no GitHub repository yet.

## Settings audit

2026-11-02, revision 8be6894, Source/ and Mod/Defs read.
- Inventory: no `Mod` subclass, no `ModSettings`, no settings window, no MainButtonDef in Source/ or Mod/Defs (checked by reading both). Configurable behaviours considered and refused: tint strength (0.4 from the abstract ACG_GeneTintBase) and inheritChance (40) are design values of the look, not player needs; trait frequency and inheritance are already tuned in the Animal Traits System settings (the traits are its hediffs, defaultWeight 0 means never drawn at random); bench cost and work are XML values the game's own difficulty and mod tools already reach. No integration option: the only integration is the optional Let's Have a Cat! mod, which needs no switch.
- Decision: no settings. No empty page and no MainButtons shortcut exist (verified above). Result: not_applicable.
- Timing/scope: nothing to apply. Versions: RimWorld 1.6, Animal Traits System 3652630316. Commands: reading only, no scenario needed for absence.

## Translation audit

2026-11-02, revision 8ee7636. English is the source text in the Defs and in Mod/Languages/English/Keyed/ACG_Keys.xml (2 keys: ACG_ApplySerum, ACG_SerumApplied, both used by the two C# calls, the only player-facing strings in Source/). French lives in Mod/Languages/French: Keyed (2 keys) and DefInjected for ThingDef (bench, serum), RecipeDef, WorkGiverDef, SpecialThingFilterDef, JobDef, GeneDef and HediffDef (3 hand coat tints, the chest patch, and the 241 generated tint traits from Tests/ColourNames.fr.json, 148 colour names, written by Tests/Generate-CoatTraits.ps1). Check-Translations: PASS (503 source texts, 2 Keyed calls), one WARN: GeneDef/ACG_ChestPatch.labelShortAdj is outside the tool's inventory (a valid field, kept). No agreement or counts: no text names a pawn's gender or a count. No tu, no vous. Serum and genepack names are the gene's own label (other mods' translations, not ours). FRENCH_REVIEW.md generated.
- Review (2026-11-02, revision 4248e05): ChatGPT review in three passes, corrections applied (tint sentence without agreement, adjective colours agreeing with couleur, "ses genes qui donnent" then "a raison d'un serum pour chaque gene conferant", graphisme, chestnut and rosy); third pass: no correction. Virginie validated the French on 2026-11-02 (reviewer: Virginie, review validated as is, no correction asked).
