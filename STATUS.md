---
mod: Animal Cosmetic Genes
packageId: nelim.animalcosmeticgenes
repo: Rimworld-Animal-Cosmetic-Genes
remote: https://github.com/vbardales/Rimworld-Animal-Cosmetic-Genes.git
visibility: public             # original creation, nothing taken from another mod (PUBLISHING.md, "Nommage")
detached: yes
workflow_stage: followUp[1.1.0]
licence: original
licence_at: "2026-10-31: original work, MIT (LICENSE and Mod/LICENSE). No third-party code: Animal Traits System (Luved) is a dependency only, Gene Freedom (FarmerJoe) was disassembled to study, nothing copied."
upstream_mod_remotes: N/A      # no source mod: Big and Small, Gene Freedom and Animal Traits System gave the idea or the framework only, none of their code is used
settings_audit: not_applicable
localization: complete
translation_en: complete
translation_fr: complete
dependencies: done
workshop_required_items: done, 2026-11-10
workshop: 3837162966
published: yes
tested_on: "2026-11-07 French at 7965f0d (tickets d580 and 8554, acg-serum-bench-chain-fr and acg-serum-second-tint-refused-fr, proofs Evidence/playtests-replay-fr and playtests-replay-fr-2) and 2026-11-07 at 66f5590 (Pickle ticket 0691 green 8 of 8, English, acg-marking: acg-chest-patch-kuroneko, acg-coat-thrumbo, acg-coat-labrador, acg-coat-panther, acg-gene-tint-thrumbo, acg-serum-second-tint-refused, acg-serum-bench-recipe, acg-serum-bench-look; captures read: chest patch on Kuru1, thrumbo tinted; no ACG error in Player.log; Source/Mod unchanged since 2a3846c; proof in Tests/Pickle/Evidence/playtests-replay-en) and 2026-11-06 at 2a3846c (automated: unit tests AtsRules pass, build SAME 0 warnings, Check-Translations PASS, Check-Steps clean, Test-Mod.ps1 6 of 6). Pickle last green 2026-11-02 at 4616d5f (tickets 6184, 7f31, 6146, 6c3b, ba7f, 0f31, 989d, 8805, 6352, 0b9d) and 2026-11-06 gene-ui English and French (9615, c68d); Source changed since in 1c5278d (refusal reasons Keyed), replay due at playTests"
  - "2026-11-12 (14.a non-regression of the published 1.1.0 DONE, green, 1.6, read summary.json each): ticket c6b2 English 9 of 9 (acg-load-clean, chest-patch-kuroneko, coat-thrumbo, coat-labrador, coat-panther, gene-tint-thrumbo, serum-apply, serum-bench-recipe, serum-bench-look) and ticket d5d0 French 2 of 2 (acg-serum-second-tint-refused-fr, acg-serum-bench-chain-fr), both exit passed, no ACG error in Player.log. Evidence moved from Inbox to Tests/Pickle/Evidence/nonreg-110-en and nonreg-110-fr (Prune-Evidence -Apply); Evidence at 3.3 MB, over the 2 MB target: 14.c triage of the older folders still to do. Left in followUp[1.1.0]: 14.c cleanup, 14.e dormant, subscribe-test 13.b on 1.6 and 1.7, Workshop tags check, collection RimWorld through Nelim eyes (AUDIT.md 13.c, 13.f: not recorded for 1.0.0, ask Virginie)."
remaining:
  - "2026-11-13 (Audit relay of Virginie, ecosystem rule): ECOSYSTEM? sent to PiI (Picker-Inventory) for nelim.animalcosmeticgenes (original/framework luved.animaltraits, 3652630316). The old 'none found, scan 2026-11-12' no longer counts. WAITING for PiI one-line answer: then copy its summary into the Ecosystem section (docs/inventory/ecosystem-steam/AnimalCosmeticGenes.md). Names rule (TRANSLATIONS.md section 0): no mod title in game XML, so no TITLE? to send; official names Midas, Mars, Maui, Gulf Stream checked, Docs/review-names.md. Not a translation mod."
  - "2026-11-12 (Virginie, c est fait, 13.c and 13.f): Animal Cosmetic Genes 3837162966 added to the collection RimWorld through Nelim eyes 3815982565, by her word. Only the mod: Animal Traits System is not by Nelim and stays out (Audit told to fix the 13.c wording). Replay ledger now ends at 14.c open. Stage back to followUp[1.1.0]. Left: 14.c Evidence triage (3.3 MB, target 2 MB), 14.e dormant, 13.b subscribe-test on 1.6 and 1.7, Workshop tags check."
  - "2026-11-12 (ChatGPT review of the texts, page 1 of 1, applied): 3 applied (beeswax and goldfish spelling in the 4 tint trait labels and descriptions, generator Tests/Generate-CoatTraits.ps1 and Tests/ColourNames.fr.json keys updated so a regeneration keeps them; PUBLICATION.md line 3 says 1.1.0 live), 1 rejected (release note wording, Docs/review-refusals.md). Check-Translations PASS, Test-Mod 6 of 6, TRANSLATION_REVIEW.md regenerated. code_review_sha moved to the commit of this change: diff read, label and description text only, no code, no def structure. Mod text changed after 1.1.0: reaches Steam only with the next upload."
  - "2026-11-12 (replay-audit 2, ledger .replays/AnimalCosmeticGenes-20261112.tsv, 115 rows, 98 done, 15 n/a, 2 open): Ecosystem: none found, scan 2026-11-12 (AUDIT 8.0 done by Audit, docs/inventory/ecosystem.tsv has no row for this mod). First open 13.c and 13.f: item 3837162966 is public but its addition to the collection RimWorld through Nelim eyes (3815982565) is not recorded; the exact list is in PUBLICATION.md section Collection, Virginie adds it, then the session records it here. Stage back to publish[1.1.0] for that sub-step only, 1.1.0 stays published. Left after it in followUp: 14.c Evidence triage (3.3 MB), 14.e dormant, 13.b subscribe-test on 1.6 and 1.7."
  - "2026-11-12 (replay-audit, ledger .replays/AnimalCosmeticGenes-20261112.tsv, 72 rows, 58 done, 13 n/a, 1 open): first open 8.0 ecosystem scan (AUDIT 8.0, rule of 2026-11-12): needs one Search-Workshop.sh corpus pass for all mods, run by Audit and Virginie, result in a STATUS Ecosystem section. Stage moved from followUp[1.1.0] back to playTests[1.1.0] for that sub-step only; 1.1.0 stays published. Also done: Docs/review-refusals.md rebuilt from recorded refusals, .gitignore holds Tests/Pickle/Inbox and Parked, Tests/Pickle/Inbox created. Still open at followUp once 8.0 is closed: 14.c Evidence triage (3.3 MB), 14.e dormant, 13.b subscribe-test, 13.c/13.f collection RimWorld through Nelim eyes (not recorded, Virginie)."
  - "2026-11-10 (Steam page set by Virginie, by her word): Animal Traits System 3652630316 added as Required item, DLC field, content descriptors and the 1.6 and 1.7 tags checked/set. Details beyond \"fait\" not reported (not read live). Open: Audit to write the Required items rule in the protocols."
  - "2026-11-10 (Virginie answered Lucius on the Workshop page, by her word): thanks given, Required items and Vanilla Ranching Expanded noted. Raised to Audit (protocol gap: Required items not in AUDIT.md or PUBLISHING.md). Still to do by Virginie: set Animal Traits System 3652630316 as Required item on the item page, check the 1.6 and 1.7 tags."
  - "2026-11-10 (reply from Lucius on the Workshop page, reported by Virginie): (1) mark the dependencies on the mod page with the built-in Workshop Required items function: to do by Virginie on the item page (Animal Traits System 3652630316; Biotech is a DLC, not a Workshop item, so it cannot be listed there); no repository file holds this, it is a Steam page setting. (2) Vanilla Ranching Expanded is coming out soon and adds an animal gene system: Lucius thinks ACG could fit as an addon. Idea only, nothing decided; check the mod when it is out (gene system, hooks, whether ACG serums or traits can ride on it) before any plan. Not a dependency of ACG today."
  - "2026-11-02: BACKLOG (owner, after 1.0.0, not in 1.0.0): tint the serum item by the colour of its gene (today one turquoise vial for all 241 traits). Ground: AnimalTraitSerum already stores the gene, the item can carry a DrawColor; needs a small C# override of the item colour plus a grey-scale vial texture so the tint reads (the current vial is already turquoise). Check first: the tint on the generated colour genes only, markings keep the vial as is."
  - "2026-11-02: DEPENDENCIES (4.a to 4.g, owner: Biotech hard): required Animal Traits System luved.animaltraits (3652630316) and Biotech Ludeon.RimWorld.Biotech (genes, genepacks, Xenogermination), both in modDependencies and loadAfter with Core. Let's Have a Cat! Continued (akairo.LetsHaveaCat, 3682940618) is NOT declared: Markings.xml only lists akaNEKO_kuroneko as text in occurOnlyInAnimals, no def reference, so the chest patch just never applies without it; no MayRequire needed. No LoadFolders.xml, supportedVersions 1.6 only. Not an animal mod, 4.f n/a. sort-load-order.py not run (needs a staged Mods dir): the order is by reading, the mod only loads after ATS, Core and Biotech and nothing depends on it, so no cycle is possible. Revision: HEAD at commit of this line."
  - "2026-11-02: BACKLOG (owner, after 1.0.0, not in 1.0.0): chest patch for every cat mod, not only Kuru (akaNEKO_kuroneko). Method, as the breeding mods do (Dogs mate 2441132298 AnimalGroupDef Felidae.xml, Better Crossbreeding 3520675842 Example/Patches): (1) an explicit XML list of animal defs, a def of ours that other mods extend by patch, replacing the hard occurOnlyInAnimals of Kuru; vanilla Cat and the popular cat mods added by PatchOperationFindMod patches; optional read of the Dogs mate Cat group when installed. (2) the marking drawn from the animal sprite (silhouette measured per facing, bib at fixed proportions taken from the validated Kuru masks, clipped to the silhouette) instead of one texture set per def; a texture shipped by a mod stays first. Check first: how vanilla Cat and the other cat mods draw their sprites (same pose as Kuru?); test on two cats at least. Kuru's textures stay the reference."
code_review_sha: fa88ffef159ce9598be7cc2f339132d382e5ab93
publication_changelog_review_sha: 00ee1f97f488bf62f5a08bbae62c3887cd094360
echo_review_sha: 00ee1f97f488bf62f5a08bbae62c3887cd094360
social_preview_sha256: 5b64210d4538b220a7a7bbb057140fd2abccea157b723103e83324faab058794
tested_1_7: yes
updated: 2026-11-12
protocols_read_sha: ebf5ab89c3c31658d32b029a1d0f24e145fbc4d8
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

2026-11-02, revision 8ee7636. English is the source text in the Defs and in Mod/Languages/English/Keyed/ACG_Keys.xml (8 keys: ACG_ApplySerum, ACG_SerumApplied and six ACG_Refuse*, now 8 keys with the six refusal reasons added 2026-11-06 (ACG_RefuseNotAnimal, NoTrait, HasTrait, HasTint, Species, Exclusive; AnimalTraitGrant translates, AtsRules returns a key and stays game-free), all used by C# calls). French lives in Mod/Languages/French: Keyed (8 keys) and DefInjected for ThingDef (bench, serum), RecipeDef, WorkGiverDef, SpecialThingFilterDef, JobDef, GeneDef and HediffDef (3 hand coat tints, the chest patch, and the 241 generated tint traits from Tests/ColourNames.fr.json, 148 colour names, written by Tests/Generate-CoatTraits.ps1). Check-Translations: PASS (503 source texts, 6 Keyed calls), one WARN: GeneDef/ACG_ChestPatch.labelShortAdj is outside the tool's inventory (a valid field, kept). No agreement or counts: no text names a pawn's gender or a count. No tu, no vous. Serum and genepack names are the gene's own label (other mods' translations, not ours). FRENCH_REVIEW.md generated.
- Review (2026-11-02, revision 4248e05): ChatGPT review in three passes, corrections applied (tint sentence without agreement, adjective colours agreeing with couleur, "ses genes qui donnent" then "a raison d'un serum pour chaque gene conferant", graphisme, chestnut and rosy); third pass: no correction. Virginie validated the French on 2026-11-02 (reviewer: Virginie, review validated as is, no correction asked).

- Review 2026-11-06 (revision 771efea): six refusal keys ACG_Refuse* added, ChatGPT review passes 4 (applied: blanc pur, Gulf Stream, albacore, two CHANGELOG wordings; kept plastron blanc), last pass no correction. Virginie validated the review on 2026-11-06 (reviewer: Virginie, validated as is, no further correction asked).
- Review 2026-11-12 (revision 9b21b96): ChatGPT review of the texts, three passes (3 applied: beeswax and goldfish spelling, PUBLICATION line 3; 1 rejected, logged in Docs/review-refusals.md; last two passes no correction). Virginie validated the review on 2026-11-12 (reviewer: Virginie, validated as is, no further correction asked).

## NSB

2026-11-09 sync (fourth): NSB since 2026-11-08: all places validated by Virginie (photos NPT 5m-2, ticket 4871, fixture z2), final decorated save Nelims-tribe-decor-mods-z3.rws copied to Mod/Pickle/Fixtures (sha256 6bfb4a48...); Nelims-tribe.rws stays the OLD Sanctuary until the scenarios are repointed: gallery scenarios still load Nelims-tribe and are NOT repointed (frozen shots 4 and 5 candidates were captured there; repoint only with Audit/NSB word). Roster, appearances, animals catalogue unchanged. NPT steps since 2026-11-08: ScreenshotStudio CameraOrthoSteps (camera ortho size steps, catalogue), holds in hand, Refuel, dusk light dimmed to at most N (light refreshed): the last one may fix the grey dusk of shot 5, not used yet. 2026-11-08 sync (third, 16:50): NSB since the second sync = VALIDE.md only (sleeping-nook, enclosure-south flower logo, hearth-hall, fire-pit, enclosure-north, prestige-hall validated 2026-11-08); roster, appearances, animals catalogue and SANCTUAIRE-LIEUX unchanged (last commit 2026-11-07 23:49); NPT steps: nothing new after 2026-11-08 00:37 (already read). Shot 4 uses the barn emptied by the step, unaffected; check on the next capture that the validated flower logo of enclosure-south is not in frame. 2026-11-08 sync (second). NSB changed since 2026-11-07 in places only: preindustrial-workshop validated by Virginie 2026-11-07 ("je les valide", cell (223, 237) unchanged), play-area, 4b places, infirmary, sofa-corner, dining-nook, plant-garden, sleeping-nook validated; enclosure-south text edited (our barn unaffected); no change to roster, appearances, animals catalogue or validated animals. NPT steps since 2026-11-07: new `the building X at (x, z) is put out` (empties fuel, unused here), `lies asleep in the bed`, StageDecor made-of placement: none serves a shot, nothing repointed. Rules said back (owner, 2026-11-05 and 2026-11-07): everything in NSB is free (places, colonists, domestic animals); a colonist or domestic animal outside NSB needs the owner express validation, except an animal the mod adds or its items address; a colonist properties change only with express validation; every outfit is free; every animal the mod includes must be in the gallery.

Rules said back (owner, 2026-11-05 and 2026-11-07): everything in NSB is free (places, colonists, domestic animals); a colonist or domestic animal outside NSB needs the owner's express validation, except an animal the mod adds or its items address; a colonist's properties change only with express validation; every outfit is free; every animal the mod includes must be in the gallery.

Places read: 2026-11-12 (NSB docs since 2026-11-10: only the docs to Docs folder rename 18abf53, no content change; previously 2026-11-10: no place doc changed since 2026-11-09; previously 2026-11-09, VALIDE and SANCTUAIRE-LIEUX diffs of 1677380; previously 2026-11-08, VALIDE diff to 5d2663e, SANCTUAIRE-LIEUX unchanged since 2026-11-07, workshop row)
Tribe read: 2026-11-12 (no roster, appearance or animal change, rename only; previously 2026-11-10: NSB docs since 2026-11-09: only Quill eyes BIGEYE to EyeNormal in NSB-ROSTER and QUILL-PROFIL, Quill is not in the ACG gallery, Nelim unchanged; previously 2026-11-09, docs diffs since 2026-11-08 read, no roster, appearance or animal change; previously 2026-11-08, VALIDE.md diffs since 2026-11-07: places only, no animal or colonist row changed; roster, appearances, animals catalogue unchanged in git; sheets of Kuru, Atticus, Shogun, Tama last opened 2026-11-07)
Steps read: 2026-11-12 (NPT steps since 2026-11-10: culture, work giver fields, floors, decor burns, filth removal, hide tab bar, mod options page, none serves the ACG gallery, none renamed or removed that ACG calls; previously 2026-11-10: steps used by the ACG gallery scenarios all still in docs/steps.md, none renamed or removed; new 2026-11-10 steps are for other mods and the apparel and looks catalogue rows only gained Workshop ids; previously 2026-11-09, PickleTools docs/steps.md log since 2026-11-08; previously 2026-11-08, PickleTools docs/steps.md log since 2026-11-07)

| Place | Shots | Changes made for the gallery | Last read |
|---|---|---|---|
| preindustrial-workshop (shot 1, validated 2026-11-07) | 1 | emptied, decor within 3 cells | 2026-11-08 |
| barn / enclosure-south (animals, serum applied) candidate | TBD | none | 2026-11-07 |
| cloister or gravel-yard (Atticus portrait) candidate | TBD | none | 2026-11-07 |

| Colonist | Shots | Outfit per shot | Last read of profile | Exceptions |
|---|---|---|---|---|
| Nelim (only colonist in the save, owner of Atticus and Shogun) | TBD | TBD, from her wardrobe | not read | none |
| Miel (Tama's owner) candidate | TBD | TBD | not read | none |

| Animal | Shots | Outfit | Last read of sheet | Exceptions |
|---|---|---|---|---|
| Kuru (akaNEKO_kuroneko, chest patch target, absent from save: NSB supplies steps) | TBD | none (no apparel for cats) | 2026-11-07 | none |
| Atticus (thrumbo, tint) | TBD | none daily, peach LargeAnimalScarf for ceremony | 2026-11-07 | none |
| Shogun (labrador, tint) | TBD | leather dog collar daily, others validated 2026-11-06 | 2026-11-07 | none |
| Tama (Forest Cat, control without trait) candidate | TBD | none | 2026-11-07 | none |
| Panther (used in tests, wild/decor, not covered by rule 2) | TBD | none | n/a | none |

| Included animal (rule 5) | Shot(s) | |
|---|---|---|
| none: the mod ships no PawnKindDef, race or patched animal (checked in Mod/Defs 2026-11-07). The chest patch is limited to akaNEKO_kuroneko (Kuru), the 241 tint traits apply to any animal. | n/a | no gap |

## Shotlist

2026-11-07, plan in `Tests/Pickle/Mod/Pickle/Features/acg-gallery.feature` header (director pass: Opus sub-agent). Story: one clear day, Nelim (researcher outfit) gives colour to the animals. Plan rating (rate-gallery, plan only, no capture) 2026-11-07 after the director fixes (foreground, background, instant per shot; bench shot at root size 4 for criterion j): 5 on shots 1 to 5, k ok on the series (opening 1, closing 5, wide, medium, close). Gate 1 passed, scenarios written (6 incl. the genepack window), Check-ShotlistVsScenario OK, Check-Steps OK. Cells are place centres, unconfirmed on a photo: a bad cell fails the first run and is fixed then.

| Shot | a time frame | b decor | c living | d pawns | e action (instant) | f composition | g subject | j mod | plan |
|---|---|---|---|---|---|---|---|---|---|
| 1 bench-1-dawn | preindustrial-workshop 07:00 clear | torches, stool, daylily pot, sculpture, genepack container (cells to confirm) | Shogun sits, head up | Nelim researcher outfit, smirk | DoBill paused tick ~2000, vial about to come out | wide-medium, opening | a serum is nearly done | bench + genepack | 5 |
| 2 kuru-2-patch | hut 09:00 | table, cushions, andon, lantern | Kuru facing camera | same outfit | just after ApplySerum | close, zoom 2.5 | Kuru gets his patch | chest patch | 5 |
| 3 labradors-3-coats | flower-garden 11:00 | daylilies, beds | tinted labrador, Shogun | same | labrador stands up, Nelim mid-stride | medium | same breed, two coats | teal tint | 5 |
| 4 horse-4-serum | barn 14:00 | hay, lantern, trough | horse, alpaca violet | same | Nelim near the horse with serum | medium | next in line | serum, tint | 5 |
| 5 bridge-5-dusk | river-bridge 17:30 | lantern, bridge | Shogun, labrador, horse | same | walking home mid-stride | wide, closing | home at dusk | tinted coats | 5 |
k (series): one story day, opening 1, closing 5, wide/medium/close present: ok. Main risks: cells unconfirmed, tinted anonymous labrador/horse/alpaca must exist in the save (ask NPT), pause mid-stride needs a goto job.

Gallery tickets filed 2026-11-07 at 365e402 (map wsl-deps.acg-gallery.map): 20261107-225248-553-1a93 (shots 1 to 3, Tests/Pickle/Inbox/gallery-1) and 20261107-225254-077-b107 (shots 4 to 6, Tests/Pickle/Inbox/gallery-2). Keep Source/ and Mod/ and the feature frozen until RUN_DONE. At RUN_DONE: read summary.json and junit.xml, open every capture, rate-gallery for REDO or candidate.

Subtitles (review-gallery step 10): PUBLICATION.md does not exist yet (writeDocs), so the five lines live in the header of acg-gallery.feature and move to PUBLICATION.md "Gallery subtitles" when it is written. Shot 6 (genepack window) gets none.
