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
  - "2026-10-31: unverified 1.a duplicate check: scripts/Search-Workshop.sh not run (the corpus search needs Virginie's go, AGENTS.md). Not verified that no equivalent mod exists."
  - "2026-10-31: defect 1.e GitHub repository vbardales/Rimworld-Animal-Cosmetic-Genes not created (outward action, waiting for the owner's go). 1.i push not done (commit 1 is local only). Protocols read only in part for Mark-ProtocolsRead: AUDIT.md sections 1 to 4 and PUBLISHING.md up to Licence; STYLE_RIMWORLD.md, MOD_SETTINGS.md, TRANSLATIONS.md not read."
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
