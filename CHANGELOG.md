# Changelog

Format inspired by [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
This file serves the repository and the writing of Steam patch notes; RimWorld does not display it in game.

## [Unreleased]

### Added

- Cosmetic animal traits for Animal Traits System: one trait per colour gene (241 generated `AnimalTrait_<gene>` hediffs, the coat is tinted with the gene colour), never drawn at random, inherited by offspring.
- Serum workbench (`ACG_SerumBench`): a bill destroys a genepack and makes a serum of the mapped trait.
- Serum use: a colonist applies the serum to an animal by right-clicking the animal; the trait is added if the species and the exclusivity rules allow it, then the serum is consumed.
- Chest patch gene and trait for the tuxedo bib of akaNEKO_kuroneko (Let's Have a Cat! Continued), drawn by a render node with one texture per facing.
- Gene to trait mapping (`GeneTraitMapDef`), so a gene of another mod needs no hand work.
