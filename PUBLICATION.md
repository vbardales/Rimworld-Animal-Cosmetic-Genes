# Animal Cosmetic Genes: publication

This is the record of everything the Workshop page requires and that the repository stores nowhere else. The mod is published (`STATUS.md`: `published: yes`, 1.1.0 live, public repository, published through the CI, `PUBLISHING.md`, "Deux modes de publication").

## Steam description

The one source of the Workshop description (owner, 2026-09-25): the CI converts this block to Steam BBCode and generates the plain-text `<description>` of `Mod/About/About.xml` from it. No code fence inside; the last line is the source link.

```markdown
Give the animals of your colony a new coat colour, using the colour of a gene.

Every hair and skin colour gene of Biotech, and of a few gene mods, can be turned into a cosmetic trait for an animal. Build a serum bench, break a genepack down into serums, and apply a serum to an animal: its coat takes a tint of the gene colour. The trait is passed on to its young. Nothing here makes an animal sapient, and nothing changes what an animal can do: only its look.

## How it works

- **Serum bench.** A bench in the Biotech menu, unlocked by Xenogermination and built in a laboratory. A bill destroys one genepack and makes one serum for each of its genes that gives a coat trait.
- **Serum.** Select a colonist, right-click an animal and choose "Apply" followed by the gene name. The trait is added if the species and the exclusivity rules allow it, and the serum is used up. The game tells you why when it refuses.
- **Traits.** 241 coat tints are generated from the colour genes of the game, one trait per gene. They are never drawn at random: only a serum gives one. Tints are blended at 40 %, so a pale animal shows the colour best.
- **Chest patch.** One marking trait, a white tuxedo bib, for Kuru, the black cat of Let's Have a Cat! Continued. It does nothing without that mod.
- **Gene mods.** The colours of Genes Expanded - Skin Colors, Genes Expanded - Hair, Seren and Cookie Genes are covered too. A gene of a mod you do not play with is simply never found.

## Requirements

[Animal Traits System](https://steamcommunity.com/sharedfiles/filedetails/?id=3652630316) and the Biotech DLC. [Let's Have a Cat! Continued](https://steamcommunity.com/sharedfiles/filedetails/?id=3682940618) is optional, only for the chest patch.

The interface is in English and French.

## If I go quiet

If I do not answer within a reasonable time after being contacted, anyone may freely update this or any other of my mods, including publishing a continuation of it. All credit must be preserved.

## AI-generated

This mod's code was written with Claude Code (Anthropic) under human direction, review and testing, its French texts were reviewed with ChatGPT (OpenAI), and its preview image was generated with DALL-E (OpenAI) from captures of the game. Stated openly: designing with these tools is my job.

## Thanks

Luved, for [Animal Traits System](https://steamcommunity.com/sharedfiles/filedetails/?id=3652630316), which draws, restricts and inherits the traits. None of its code is used here.

akairo, who made the cats of Let's Have a Cat!, and Bernau31, who keeps them alive in [Let's Have a Cat! Continued](https://steamcommunity.com/sharedfiles/filedetails/?id=3682940618): Kuru, their tuxedo cat, wears the chest patch.

FarmerJoe, for [Sapient Animal - Gene Freedom](https://steamcommunity.com/sharedfiles/filedetails/?id=3825033251): reading how it makes gene visuals reach animals showed me that coats on ordinary animals were possible. Nothing from it is used.

Lazy Friday Studio, for [Genes Expanded - Skin Colors](https://steamcommunity.com/sharedfiles/filedetails/?id=3214172563) and [Genes Expanded - Hair](https://steamcommunity.com/sharedfiles/filedetails/?id=3221946756), OdysseyLotus and Lucius, for [Seren, from Stardust](https://steamcommunity.com/sharedfiles/filedetails/?id=3726565301), and Lyn the Cookie, for [Cookie Genes (Skin and Hair Colors)](https://steamcommunity.com/sharedfiles/filedetails/?id=2879072525): their gene colours are the ones the serums give. Nothing of theirs is copied; the colours are read from the game when it runs.

Dalrae, who made Stick Lantern, and Mlie, who continues it: [Stick Lantern (Continued)](https://steamcommunity.com/sharedfiles/filedetails/?id=2024351846) lights the scenes of the gallery. It is not part of the mod and not a dependency.

Hysteria82, for [Lisa's Work Apparel](https://steamcommunity.com/sharedfiles/filedetails/?id=3709891968), ponpeco, for [Ponpeco Accessories](https://steamcommunity.com/sharedfiles/filedetails/?id=3298397484), and Rooboid, with Qux who continues it, for [Roo's HD Hairstyles (continued)](https://steamcommunity.com/sharedfiles/filedetails/?id=3559870636): the shirt, skirt, glasses, earrings and hairstyle that Nelim wears in the gallery. None of them is part of the mod or a dependency.

Ludeon Studios, for Biotech and its genes.

[Pickle](https://steamcommunity.com/sharedfiles/filedetails/?id=3791648678) and [Nelim's Pickle Tools](https://steamcommunity.com/sharedfiles/filedetails/?id=3806142401) were used for development and testing only; neither is a dependency of the distributed mod.

Full attribution: [ATTRIBUTION.md](https://github.com/vbardales/Rimworld-Animal-Cosmetic-Genes/blob/main/ATTRIBUTION.md). Released under the MIT licence: [LICENSE](https://github.com/vbardales/Rimworld-Animal-Cosmetic-Genes/blob/main/LICENSE).

[Source code on GitHub](https://github.com/vbardales/Rimworld-Animal-Cosmetic-Genes)
```

## Gallery order

Upload in this order (the files of `Art/Gallery/`, subtitles burnt in before Virginie's review, GALLERY.md, 2026-11-09). The interface capture (6) has no subtitle. `0-preview.png` is a byte copy of `Mod/About/Preview.png`, not uploaded to the gallery.

| index | file | what it shows | line |
|---|---|---|---|
| 1 | 1-bench-dawn.jpg | Nelim at the serum bench, vial ready, Shogun beside her | The serum is ready at the bench. |
| 2 | 2-kuru-patch.jpg | Kuru, front view, with his white chest patch, Nelim holding the vial | Kuru gets his white chest patch. |
| 3 | 3-labradors.jpg | two labradors, tan and pale red | Same breed, two coats. |
| 4 | 4-horse.jpg | the barn horse and a tinted alpaca | Next in line: the barn horse. |
| 5 | 5-bridge-dusk.jpg | tinted animals at the bridge at dusk | Home at dusk, with a few new colours. |
| 6 | 6-genepack-window.jpg | the genepack window with the chest patch gene | none (interface capture) |

The table matches the gallery table of `STATUS.md` (all six accepted by Virginie, 2026-11-09).

## Dependencies and DLC

- Animal Traits System, `luved.animaltraits`, 3652630316: required (`modDependencies`, `loadAfter`).
- Biotech, `Ludeon.RimWorld.Biotech`: required (`modDependencies`, `loadAfter`).
- Let's Have a Cat! Continued, `akairo.LetsHaveaCat`, 3682940618: optional, not declared (the chest patch only applies to its cat `akaNEKO_kuroneko`).
- Optional gene mods, not declared (their genes are looked up by name): Genes Expanded - Skin Colors 3214172563, Genes Expanded - Hair 3221946756, Seren, from Stardust 3726565301, Cookie Genes (Skin and Hair Colors) 2879072525.
- Supported version: the latest RimWorld version only.

## Collection

For Virginie, to add to the collection [RimWorld through Nelim's eyes](https://steamcommunity.com/sharedfiles/filedetails/?id=3815982565) (AUDIT.md 13.c):

- The mod: [Animal Cosmetic Genes](https://steamcommunity.com/sharedfiles/filedetails/?id=3837162966). Only the mod: its dependency Animal Traits System is not by Nelim, so it does not go in the collection (Virginie, 2026-11-12).
- The DLC it requires: Biotech (a DLC, not a Workshop item: it cannot be added to a collection, listed for the record).
- Its descriptors (Workshop tags of the item): Mod, 1.6, 1.7.
- No `OptionalCompat.xml`: no optional compatibility to add.

## Adult content

Answer to the content boxes: **no adult content**. The six gallery images and the preview show animals, one colonist in everyday clothes and a workbench; no nudity, gore or sexual content.

## Thank-you comments

Registry: `../docs/WORKSHOP_COMMENTS.md`. Post only once the item is visible. The Workshop id of this mod is 3837162966 (private item created 2026-11-10).

| recipient | id | status | note |
|---|---|---|---|
| Luved, Animal Traits System | 3652630316 | posted 2026-11-10 | new row in the registry |
| akairo and Bernau31, Let's Have a Cat! Continued | 3682940618 | posted 2026-11-10 | one message on the Continued page, both credited; no row for the original page |
| FarmerJoe, Gene Freedom | 3825033251 | posted 2026-11-10 | new row in the registry |
| Lazy Friday Studio, Genes Expanded - Skin Colors | 3214172563 | posted 2026-11-10 | optional integration, tinted genes; registry row to add |
| Lazy Friday Studio, Genes Expanded - Hair | 3221946756 | posted 2026-11-10 | same author, own page, own comment |
| OdysseyLotus and Lucius, Seren, from Stardust | 3726565301 | posted 2026-11-10 | registry row to add |
| Lyn the Cookie, Cookie Genes (Skin and Hair Colors) | 2879072525 | posted 2026-11-10 | id and author read on the Workshop page and in the local About.xml, 2026-11-09 |
| Stick Lantern (Continued), Mlie after Dalrae | 2024351846 | posted (covered) | gallery props, already thanked on that page; ACG added to Covers, no new comment |
| Hysteria82, Lisa's Work Apparel | 3709891968 | posted 2026-11-10 | gallery apparel, not a dependency |
| ponpeco, Ponpeco Accessories | 3298397484 | not_applicable | comments closed on the page, credited in the Thanks only |
| Rooboid and Qux, Roo's HD Hairstyles (continued) | 3559870636 | posted 2026-11-10 | one message on the Continued page, both credited; the original's page is not_applicable |
| Pickle | 3791648678 | posted | already covered, ACG added to `Covers` |
| Nelim's Pickle Tools | 3806142401 | not_applicable | private page, no external recipient |
| Ludeon Studios | none | not_applicable | no page to comment on |

Animal Traits System:

```
Animal Traits System did all the boring parts for me: rolling traits, species limits, passing them on to the pups. I only had to teach it a few hundred coat colours xD Thanks Luved! [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3837162966]Animal Cosmetic Genes[/url]
```

Let's Have a Cat! Continued:

```
Kuru, the tuxedo cat, was my guinea pig for the white chest bib. akairo for the cats, Bernau31 for keeping them alive in 1.6, thanks both :) [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3837162966]Animal Cosmetic Genes[/url]
```

Genes Expanded - Skin Colors:

```
Your skin colours turned out to be good coat colours too. A few of them now end up in a vial and then on a pony, hope that's ok :) Thanks Lazy Friday Studio! [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3837162966]Animal Cosmetic Genes[/url]
```

Genes Expanded - Hair:

```
The serums carry your hair gene names as they are, so the bench list reads like your palette. Thanks Lazy Friday Studio! [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3837162966]Animal Cosmetic Genes[/url]
```

Seren, from Stardust:

```
Teal and twilight are in there too: every colour gene Seren adds can tint an animal's coat. Thanks OdysseyLotus and Lucius :) [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3837162966]Animal Cosmetic Genes[/url]
```

Cookie Genes (Skin and Hair Colors):

```
Jade, Sapphire, Rosey: your skin colours work on fur too, and they are all in the serum bench now. Thanks Lyn the Cookie xD [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3837162966]Animal Cosmetic Genes[/url]
```

Lisa's Work Apparel:

```
The buttoned shirt, the skirt and the horn-rimmed glasses of Lisa's Work Apparel are what my researcher wears in every screenshot. Thanks Hysteria82 :) [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3837162966]Animal Cosmetic Genes[/url]
```

Ponpeco Accessories:

```
Tiny earrings, but they are in every picture of my colonist, and they look good. Thanks ponpeco xD [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3837162966]Animal Cosmetic Genes[/url]
```

Roo's HD Hairstyles (continued):

```
The high ponytail in all my screenshots is yours: thank you Rooboid for the hairstyle and Qux for keeping it alive in 1.6 :) [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3837162966]Animal Cosmetic Genes[/url]
```

Gene Freedom:

```
Reading how Gene Freedom turns the render node on is what made me think coats on ordinary animals could work. I went another way (serums, no sapience), but yours came first. Thanks FarmerJoe :) [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3837162966]Animal Cosmetic Genes[/url]
```

## Gallery subtitles

One English line per story scene, burnt in with `../scripts/Add-Subtitle.ps1` from the clean originals in `Art/Gallery-clean/` to `Art/Gallery/`. The interface capture (6) gets no subtitle.

| index | file | line |
|---|---|---|
| 1 | 1-bench-dawn.jpg | The serum is ready at the bench. |
| 2 | 2-kuru-patch.jpg | Kuru gets his white chest patch. |
| 3 | 3-labradors.jpg | Same breed, two coats. |
| 4 | 4-horse.jpg | Next in line: the barn horse. |
| 5 | 5-bridge-dusk.jpg | Home at dusk, with a few new colours. |
| 6 | 6-genepack-window.jpg | none (interface capture) |

## Release notes (the change note of each upload)

The change note sent to Steam with an upload, under the heading of its version: the manual workflow reads the block under `### <version>` (`../PUBLISHING.md`, "Publier par la CI"), and the `## [<version>]` section of `CHANGELOG.md` goes into the GitHub release. The first line carries the version in BBCode. Limit 8000 bytes.

### 1.1.0

```
[b]1.1.0[/b]

Support for the latest RimWorld version declared after an English-language test pass. Nothing else changes.
```
