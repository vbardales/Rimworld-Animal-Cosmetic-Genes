---
mod: Animal Cosmetic Genes
packageId: nelim.animalcosmeticgenes
repo: Rimworld-Animal-Cosmetic-Genes
remote: https://github.com/vbardales/Rimworld-Animal-Cosmetic-Genes.git
visibility: public             # original creation, nothing taken from another mod (PUBLISHING.md, "Nommage")
detached: yes
workflow_stage: setupRepo
licence: original
licence_at: "2026-10-31: original work, MIT (LICENSE and Mod/LICENSE). No third-party code: Animal Traits System (Luved) is a dependency only, Gene Freedom (FarmerJoe) was disassembled to study, nothing copied."
upstream_mod_remotes: N/A      # no source mod: Big and Small, Gene Freedom and Animal Traits System gave the idea or the framework only, none of their code is used
settings_audit: unchecked
localization: unchecked
translation_en: unchecked
translation_fr: unchecked
dependencies: unchecked
workshop: none
published: no
tested_on: never
remaining:
  - "2026-10-31: unverified 1.a duplicate check, partly done on Audit's list (no corpus search run, Search-Workshop.sh needs Virginie's go). Read: Animal Genetics (Continued) 2830943477 (About.xml, file list): seven stat genes (health, damage, speed, capacity, meat, leather, milk/wool) passed to young, no look at all, so no overlap with ACG. Not read, known by name and register category only (docs/registre/mods-registre.tsv): Animal Variety Coats 1511926373, Fox Patch 2944551645, H.C AnimalReskins Complete 3368174245 (retexture), dead before 1.6: H.C VarietyCoats 2161058753, Colorful Coats Vanilla Animals Expanded 2398446130. ColorfulCoatsCatsAndDogsRenew (answer of its session, 2026-10-31, not verified by reading its repo): four XML patches, 41 breeds, writing alternateGraphicChance and alternateGraphics (colour only) on the PawnKindDef; the game's TryGetAlternate rolls the coat from thingIDNumber each time, nothing stored, saved or inherited; it stands aside when a kind already has a coat list. Clash with ACG: no code clash, but a hediff tint multiplies over the same sprite, so a cat would get two tints. Rule to keep one system per animal: an ACG tint trait skips an animal whose pawn.GetGraphicIndex() >= 0 (or the patched kinds are excluded). Inheritance is the gap that ACG fills. What the other coat mods give (eyes, coats) is not established."
  - "2026-10-31: unverified spike before any C#: a hediff skinColorTint or skinColorOverride on a Thrumbo, a cat and a labrador in game (tint multiplies the base texture, poor on dark coats; override loses markings). Steps exist (NPT, 2026-10-31); scenario Tests/Pickle/Mod/Pickle/Features/acg-spike.feature (Thrumbo, Cat, LabradorRetriever, Panther; before, tint, override), map wsl-deps.acg-spike.map, Check-Steps clean. Ticket 20261031-201107-439-6c09 filed on 9a6d7cc, result by RUN_DONE from the TM, queue long (about 30 older tickets pending). The hediff step is compiled by NPT but never played: the first run tests it too; the save Nelims-tribe against this small map is untested. Phase 1 tint only, phase 2 eyes and marks for Atticus, Rain, Shogun, Tama, Kuru (Audit review, 2026-10-31)."
  - "2026-10-31: 1.e and 1.i done on the owner's go: public repository https://github.com/vbardales/Rimworld-Animal-Cosmetic-Genes created and main pushed. Stays at setupRepo until 1.a (duplicate check) is complete, then 1.k to makeSources. Protocols read only in part for Mark-ProtocolsRead: AUDIT.md sections 1 to 4 and PUBLISHING.md up to Licence; STYLE_RIMWORLD.md, MOD_SETTINGS.md, TRANSLATIONS.md not read."
  - "2026-10-31: unverified Animal Traits System: assignment logic (Patch_PawnGenerator, Patch_DoBirthSpawn) not read; a hidden trait (becomeVisible false) is not drawn: a cosmetic trait must stay visible."
  - "2026-10-31: feature coat tint by hediff skinColorTint (XML), eye and marking render node with a position per species, gene to trait (DefModExtension on GeneDef; a new workbench, or a ritual in a tribal colony, integrates a gene into an animal, destroys the genepack and creates the ATS trait; owner's order 2026-10-31, vanilla model Building_Enterable not read, Ideology ritual not read). Study: Sanctuary Backlot docs/ACG-FAISABILITE.md (section 4 bis)."
  - "2026-10-31: unverified a hediff render node on a Thrumbo in game; owner picks the first species to cover."
updated: 2026-10-31
protocols_read_sha: 249b59bcde1ecce1cd6bc8a813e6ae23e6b0b1e3
---

# Animal Cosmetic Genes: status

Current state only: the front matter above is the source of truth, run lines go to `docs/runs/`.
Check it with `scripts/Check-Status.ps1 -Mod AnimalCosmeticGenes` (no ERROR) before the commit that leaves the monorepo.

## State

Repository skeleton at `setupRepo`, created on 2026-10-31 on the owner's order (variant A of the study: depends on Animal Traits System, with a gene giving an animal a trait). No code, no art, no GitHub repository yet.
