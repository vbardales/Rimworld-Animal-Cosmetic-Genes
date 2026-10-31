# Animal Cosmetic Genes

Ordinary animals, not only sapient ones, can look different from one another: eye colour, coat tint, markings. Work in progress, nothing is playable yet. RimWorld latest version.

## Idea

Today only animals made sapient (Big and Small, with a gene mod) take visual genes. Ordinary animals have no gene tracker, and the gene render nodes draw only on humanlike pawns. This mod gives ordinary animals the same kind of looks without making them sapient.

## Plan

- Each look is a trait of Animal Traits System (`luved.animaltraits`): a `HediffDef` with its `AnimalTraitExtension`. The framework draws the traits, weights them, restricts them by species and passes them on to the young.
- Coat tint: `skinColorTint` or `skinColorOverride` of the hediff, XML only.
- Eyes and markings: a render node on the animal body, with a position per species (one `DefModExtension` per species).
- A gene can give an animal one of these traits: a `DefModExtension` on the gene def names the trait. A new workbench (or, for a tribal colony, a ritual) integrates the gene into an animal: the genepack is destroyed and the animal gets the trait.

The study is in the repository of the test mod that asked for it (`docs/ACG-FAISABILITE.md` of Sanctuary Backlot, not published). Nothing here is written or tested yet.

## Licence

MIT (`LICENSE`). Credits: `ATTRIBUTION.md`.
