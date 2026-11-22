---
mod: Animal Cosmetic Genes
packageId: nelim.animalcosmeticgenes
repo: Rimworld-Animal-Cosmetic-Genes
remote: https://github.com/vbardales/Rimworld-Animal-Cosmetic-Genes.git
visibility: public             # original creation, nothing taken from another mod (PUBLISHING.md, "Nommage")
detached: yes
workflow_stage: shootGallery[1.2.0]
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
tested_on: "2026-11-16/17 at d0346538 (published 1.2.0 = v1.2.0, 14.a non-regression green, 1.6): English 9 of 9 (ticket 13be), French 2 of 2 (1561), acg-serum-tint-look 1 of 1 (99fb), proofs Tests/Pickle/Evidence/nonreg-120-en, nonreg-120-fr, nonreg-120-tint. 13.b subscribe-test of published 1.2.0 OK 2026-11-17 (PiI: item 3837162966 on disk, About.xml modVersion 1.2.0, files identical to d0346538 Mod). Earlier runs and older proofs: Docs/runs/2026-11-17-status-journal.md and git."
remaining:
  - "9.f OPEN (replay 2026-11-22, range ecosystem..): gallery_validated_sha absent; needs Virginie oui on the 7 images of Art/Gallery (Get-GalleryHash.ps1 gives e3cb6a56...), then write the field. 10.a bis: preview_source_decision (keep|redo) absent, to ask after the gallery oui. Not replayed beyond 9: sections 10 to 14. Hygiene: Docs/runs holds journals other than pickle.md (AGENTS.md migration). Still to do from 14.c: WSL cleanup follow-up (PiI cleanup of 2026-11-13 stands); branches (only main exists)."
  - "Idea only (Lucius, Workshop, 2026-11-10): Vanilla Ranching Expanded adds an animal gene system, ACG might fit as an addon. Check the mod when out before any plan; not a dependency."
  - "BACKLOG (owner, 2026-11-02): chest patch for every cat mod, not only Kuru (akaNEKO_kuroneko): explicit XML list of animal defs extended by patches, marking drawn from the sprite silhouette; test on two cats at least. Kuru textures stay the reference."
ecosystem_line: 1.2
code_review_sha: f2f11d808602b05f2601d4103784b3113802b26c
publication_changelog_review_sha: d0346538fd6b13e02384ceb165454c7efc2ccd03
echo_review_sha: eba369d0159d8306314fbc1d5b0cc2845420c31a
social_preview_sha256: 69c97fc3cd52d170f68991f0c71b6c2c8bc8343bdc4c1949cdfed87749bd45af
tested_1_7: yes
updated: 2026-11-22
protocols_read_sha: da9d9779ffdb51fb7b3c88e8184b34a32781deb6
---

# Animal Cosmetic Genes: status

Current state only: the front matter above is the source of truth, run lines go to `docs/runs/`.
Check it with `scripts/Check-Status.ps1 -Mod AnimalCosmeticGenes` (no ERROR) before the commit that leaves the monorepo.

## State

Moved to `makeSources` on 2026-10-31. Repository skeleton created on 2026-10-31 on the owner's order (variant A of the study: depends on Animal Traits System, with a gene giving an animal a trait). No code, no art, no GitHub repository yet.

## Ecosystem

Ecosystem (Steam, 2026-11-22, delta): parent Animal Traits System 3652630316; no duplicate or fork; 10 linked mods (Expanded, 2 add-ons, 3 translations, 3 other gene mods). Nothing created since 2026-11-13. Report: docs/inventory/ecosystem-steam/AnimalCosmeticGenes.md (protocols root, 540c7ed).

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

Places read: 2026-11-16 (NSB docs: no commit since 2026-11-12, git log checked, no doc opened; previously 2026-11-12, NSB docs since 2026-11-10: only the docs to Docs folder rename 18abf53, no content change; previously 2026-11-10: no place doc changed since 2026-11-09; previously 2026-11-09, VALIDE and SANCTUAIRE-LIEUX diffs of 1677380; previously 2026-11-08, VALIDE diff to 5d2663e, SANCTUAIRE-LIEUX unchanged since 2026-11-07, workshop row)
Tribe read: 2026-11-16 (no NSB docs commit since 2026-11-12, roster, appearances, animals unchanged, no sheet opened; previously 2026-11-12, no roster, appearance or animal change, rename only; previously 2026-11-10: NSB docs since 2026-11-09: only Quill eyes BIGEYE to EyeNormal in NSB-ROSTER and QUILL-PROFIL, Quill is not in the ACG gallery, Nelim unchanged; previously 2026-11-09, docs diffs since 2026-11-08 read, no roster, appearance or animal change; previously 2026-11-08, VALIDE.md diffs since 2026-11-07: places only, no animal or colonist row changed; roster, appearances, animals catalogue unchanged in git; sheets of Kuru, Atticus, Shogun, Tama last opened 2026-11-07)
Steps read: 2026-11-16 (NPT steps since 2026-11-12: Beauty2 mouth vertical offset DY step b6dec3e (used by shot 4, a81f), gizmo hover, floor build, filth spread, OnMainThread frame hook; catalogues Simple Ivory, SZ_StonesAndTerrains, RimOni, Yukiyuki; none renamed or removed that ACG calls; previously 2026-11-12, NPT steps since 2026-11-10: culture, work giver fields, floors, decor burns, filth removal, hide tab bar, mod options page, none serves the ACG gallery, none renamed or removed that ACG calls; previously 2026-11-10: steps used by the ACG gallery scenarios all still in docs/steps.md, none renamed or removed; new 2026-11-10 steps are for other mods and the apparel and looks catalogue rows only gained Workshop ids; previously 2026-11-09, PickleTools docs/steps.md log since 2026-11-08; previously 2026-11-08, PickleTools docs/steps.md log since 2026-11-07)

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

Plan in the header of `Tests/Pickle/Mod/Pickle/Features/acg-gallery.feature` (director pass 2026-11-07, recomposed since; Check-ShotlistVsScenario OK 2026-11-16). Story: one clear day at the Sanctuary, Nelim (researcher outfit) gives colour to the animals. Plan rated 5 on shots 1 to 5 (2026-11-07), k ok on the series (opening 1, closing 5, wide, medium, close); shots 6 (interface window, not rated) and 7 (three vials, added 2026-11-13 on Virginie's word) follow the same story. Gallery state 2026-11-16, files in `Art/Gallery/` (subtitled) and `Art/Gallery-clean/`:

| Shot | File | Place and hour | Subject | State |
|---|---|---|---|---|
| 1 | 1-bench-dawn.jpg | preindustrial-workshop 07:00 | serum comes out of the bench | validated by Virginie |
| 2 | 2-kuru-patch.jpg | hut 10:00, macro | Kuru gets his chest patch | validated by Virginie |
| 3 | 3-labradors.jpg | flower-garden 11:00 | same breed, two coats | validated by Virginie |
| 4 | 4-horse-serum.jpg | barn 14:00 | next in line: the horse, tinted alpaca | validated by Virginie 2026-11-16 (a81f, mouth offset D 0.035, DY 0.015) |
| 5 | 5-bridge-dusk.jpg | river-bridge 17:00 | home at dusk | validated by Virginie |
| 6 | 6-genepack-window.jpg | interface window | genepack genes tab, no subtitle | validated by Virginie |
| 7 | 7-three-vials.jpg | preindustrial-workshop 16:00 | three genes, three colours | validated by Virginie |

Order (9.c): the bench opens (it shows what the mod does), the patch and the labradors show the two kinds of result, the horse and the vials carry the 1.2.0 serum colours, the bridge closes. Subtitle lines live in PUBLICATION.md "Gallery subtitles" (file names checked 2026-11-16, row 4 fixed to 4-horse-serum.jpg).
