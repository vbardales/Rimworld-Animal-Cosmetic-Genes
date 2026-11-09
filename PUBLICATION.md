# Animal Cosmetic Genes: publication

The sheet of what the Workshop page asks for and the repository holds nowhere else. The mod is not published yet (`STATUS.md`: `published: no`, version 1.0.0, public repository, mode: the CI, `PUBLISHING.md`, "Deux modes de publication").

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

This mod's code was written with Claude Code (Anthropic) under human direction, review and testing, and its French texts were reviewed with ChatGPT (OpenAI). The preview image is built from captures of the game. Stated openly: designing with these tools is my job.

## Thanks

Luved, for [Animal Traits System](https://steamcommunity.com/sharedfiles/filedetails/?id=3652630316), which draws, restricts and inherits the traits. None of its code is used here.

akairo, who made the cats of Let's Have a Cat!, and Bernau31, who keeps them alive in [Let's Have a Cat! Continued](https://steamcommunity.com/sharedfiles/filedetails/?id=3682940618): Kuru, their tuxedo cat, wears the chest patch.

FarmerJoe, for [Sapient Animal - Gene Freedom](https://steamcommunity.com/sharedfiles/filedetails/?id=3825033251): reading how it makes gene visuals reach animals showed me that coats on ordinary animals were possible. Nothing of it is used.

Lazy Friday Studio, for [Genes Expanded - Skin Colors](https://steamcommunity.com/sharedfiles/filedetails/?id=3214172563) and [Genes Expanded - Hair](https://steamcommunity.com/sharedfiles/filedetails/?id=3221946756), OdysseyLotus and Lucius, for [Seren, from Stardust](https://steamcommunity.com/sharedfiles/filedetails/?id=3726565301), and Lyn the Cookie, for [Cookie Genes (Skin and Hair Colors)](https://steamcommunity.com/sharedfiles/filedetails/?id=2879072525): their gene colours are the ones the serums give. Nothing of theirs is copied; the colours are read from the game when it runs.

Ludeon Studios, for Biotech and its genes.

[Pickle](https://steamcommunity.com/sharedfiles/filedetails/?id=3791648678) and [Nelim's Pickle Tools](https://steamcommunity.com/sharedfiles/filedetails/?id=3806142401) were used for development and testing only; neither is a dependency of the distributed mod.

Full attribution: [ATTRIBUTION.md](https://github.com/vbardales/Rimworld-Animal-Cosmetic-Genes/blob/main/ATTRIBUTION.md). Released under the MIT licence: [LICENSE](https://github.com/vbardales/Rimworld-Animal-Cosmetic-Genes/blob/main/LICENSE).

[Source code on GitHub](https://github.com/vbardales/Rimworld-Animal-Cosmetic-Genes)
```

## Gallery order

Upload in this order (the files of `Art/Gallery/`, subtitles burnt in before the review of Virginie, GALLERY.md, 2026-11-09). The interface capture (6) has no subtitle. `0-preview.png` is a byte copy of `Mod/About/Preview.png`, not uploaded to the gallery.

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

## Adult content

Answer to the content boxes: **no adult content**. The six gallery images and the preview show animals, one colonist in everyday clothes and a workbench; no nudity, gore or sexual content.

## Thank-you comments

Registry: `../docs/WORKSHOP_COMMENTS.md`. Post only once the item is visible. Replace `<ID>` by the Workshop id of this mod once it exists.

| recipient | id | status | note |
|---|---|---|---|
| Luved, Animal Traits System | 3652630316 | drafted | new row in the registry |
| akairo and Bernau31, Let's Have a Cat! Continued | 3682940618 | drafted | one message on the Continued page, both credited; no row for the original page |
| FarmerJoe, Gene Freedom | 3825033251 | drafted | new row in the registry |
| Lazy Friday Studio, Genes Expanded - Skin Colors | 3214172563 | drafted | optional integration, tinted genes; registry row to add |
| Lazy Friday Studio, Genes Expanded - Hair | 3221946756 | drafted | same author, own page, own comment |
| OdysseyLotus and Lucius, Seren, from Stardust | 3726565301 | drafted | registry row to add |
| Lyn the Cookie, Cookie Genes (Skin and Hair Colors) | 2879072525 | drafted | id and author read on the Workshop page and in the local About.xml, 2026-11-09 |
| Pickle | 3791648678 | posted | already covered, ACG added to `Covers` |
| Nelim's Pickle Tools | 3806142401 | not_applicable | private page, no external recipient |
| Ludeon Studios | none | not_applicable | no page to comment on |

Animal Traits System:

```
Your trait system did the heavy lifting: traits that get rolled, restricted by species and passed on to the young, so I never had to write any of it. I just taught it a few hundred coat colours :) [url=https://steamcommunity.com/sharedfiles/filedetails/?id=<ID>]Animal Cosmetic Genes[/url]
```

Let's Have a Cat! Continued:

```
Kuru, the tuxedo cat, was my test subject for a white chest bib: akairo for the cats, Bernau31 for keeping them alive in 1.6, thank you both! Serums are the way to get that bib in [url=https://steamcommunity.com/sharedfiles/filedetails/?id=<ID>]Animal Cosmetic Genes[/url]
```

Genes Expanded - Skin Colors:

```
Seventy-five skin colours were a gift for dye-happy me: a few of them now end up in a vial and then on a pony's coat :) Thank you, Lazy Friday Studio! [url=https://steamcommunity.com/sharedfiles/filedetails/?id=<ID>]Animal Cosmetic Genes[/url]
```

Genes Expanded - Hair:

```
Your seventy-six hair colours have good names, and the serum bench lists them as they are, "Blue Marlin" and all. Thanks for the palette, Lazy Friday Studio! [url=https://steamcommunity.com/sharedfiles/filedetails/?id=<ID>]Animal Cosmetic Genes[/url]
```

Seren, from Stardust:

```
Seren's teals and twilights were the first colours I wanted to see on an animal, so thank you OdysseyLotus and Lucius :) A serum carries them over in [url=https://steamcommunity.com/sharedfiles/filedetails/?id=<ID>]Animal Cosmetic Genes[/url]
```

Cookie Genes (Skin and Hair Colors):

```
Jade, Sapphire, Rosey: your skin colours read well on fur too, which I did not expect. Thanks Lyn the Cookie, they are all in the serum bench of [url=https://steamcommunity.com/sharedfiles/filedetails/?id=<ID>]Animal Cosmetic Genes[/url] xD
```

Gene Freedom:

```
Reading how Gene Freedom switches the render node on was what told me coats on ordinary animals could work at all. Mine goes through serums instead, but the idea started with yours, thanks xD [url=https://steamcommunity.com/sharedfiles/filedetails/?id=<ID>]Animal Cosmetic Genes[/url]
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

## Steam patch notes (1.0.0)

```
1.0.0: first release. Coat tint traits from the colour genes of the game, a serum bench, serums applied to animals, and a white chest patch for Kuru of Let's Have a Cat! Continued.
```
