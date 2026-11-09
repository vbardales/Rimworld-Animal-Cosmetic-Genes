# Attribution

No third-party code is reused in this mod: everything here is written from scratch.

The mod depends on **Animal Traits System** by Luved (packageId `luved.animaltraits`,
https://steamcommunity.com/sharedfiles/filedetails/?id=3652630316). Its traits are `HediffDef`s
carrying its `AnimalTraitExtension`; this mod adds traits of the same kind and calls its public methods.
No file from it is copied. Its licence was not established: it is used as a dependency, never redistributed.

The idea comes from a limit met while testing an animal colonist: visual genes reach only sapient animals,
through **Big and Small - Sapient Animals** (RedMattis) and **Sapient Animal - Gene Freedom** (FarmerJoe,
https://steamcommunity.com/sharedfiles/filedetails/?id=3825033251). The Gene Freedom assembly was disassembled
once to understand what it does (it changes a render-node flag on gene defs at startup). No code of it is
copied or used, and it has no licence file.

**Gene colours.** The serums give the colours of the genes found in Biotech (Ludeon Studios) and in four gene mods: Genes Expanded - Skin Colors and Genes Expanded - Hair (Lazy Friday Studio, 3214172563 and 3221946756), Seren, from Stardust (OdysseyLotus, Lucius, 3726565301) and Cookie Genes. Their gene names and colours are listed as data in `Mod/Defs/GeneTraitMap.xml` and `Hediffs_GeneTints.xml`, generated from a catalogue of the mods on disk. No texture or code of them is copied, and a gene of a mod that is not loaded is never found.

**Let's Have a Cat! Continued** (akairo, Bernau31, 3682940618): the chest patch targets its cat `akaNEKO_kuroneko` by name. No file of it is copied and it is not a dependency.

**Licence:** MIT (`LICENSE`).
