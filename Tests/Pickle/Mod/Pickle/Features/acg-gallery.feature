# ACG gallery shotlist, 2026-11-07 (write-shotlist, director pass by an Opus sub-agent). No scenario written yet: gate 1 (rate-gallery to 5) is open.
#
# MOD: a serum bench (ACG_SerumBench) turns a genepack into a serum (ACG_AnimalTraitSerum); a colonist applies it to an ordinary animal through the
# float menu; the animal gets an Animal Traits System trait that recolours its coat (241 colour tints) or draws a marking (chest patch, Kuru only).
# The mod adds no animal. NSB animals with a mod effect: Kuru only (chest patch is his canon, KURU-PROFIL.md). Shogun, Atticus, Rain keep their coat.
#
# STORY: one clear day at the Sanctuary. Nelim, researcher outfit all day (LisaWork shirt beige, skirt deep blue #1F3A5F, horn-rimmed glasses, gold
# earrings, hair Roo_HD_Hair_Highpony, own face with MouthLipsSmirk as her smile, no sweat), gives colour to the animals. Morning: she makes a serum at
# the bench. Then she gives Kuru his white chest patch, tints a young labrador beside Shogun, a horse in the barn, and walks home at dusk with her dogs.
# Time: one `I set the hour to N` per image, 2,500 ticks per game hour. Weather clear.
#
# SHOTS (index, place, hour, type; every cell of the place is confirmed at review-gallery before the scenario is written)
# 1 bench-1-dawn      preindustrial-workshop (x 218-228, z 230-244) 07:00 wide-medium, opening. Nelim at ACG_SerumBench, bill almost done (DoBill forced,
#                     paused around tick 2000), vial about to come out. Shogun sits at the bench head turned up to her (collar Apparel_leatherdogcollar,
#                     brown #3B2F2F). Genepack container and genepack on the bench. Decor: TorchLamp x2 lit, Stool, PlantPot + Plant_Daylily fully grown,
#                     SculptureSmall. Subtitle: "A serum is nearly done at the bench."
# 2 kuru-2-patch      hut (tea room) 09:00 close, zoom 2.5. Just after ApplySerum ends (first tick after), Nelim standing, empty vial, looking at Kuru.
#                     Kuru (akaNEKO_kuroneko) faces the camera, white chest patch on black fur. Decor: low table, cushions, lit andon, tatami,
#                     DR_StickLantern. Subtitle: "Kuru gets his white chest patch."
# 3 labradors-3-coats flower-garden 11:00 medium. A young anonymous labrador just tinted teal stands up, Shogun (sand) turns his head to it, both toward the
#                     camera; Nelim walks away with the empty vial (goto job, paused mid-stride). Decor: Plant_Daylily fully grown, flower beds of the place.
#                     Subtitle: "Same breed, two coats."
# 4 horse-4-serum     barn 14:00 medium. Nelim crosses the last two cells toward a horse holding the serum (ApplySerum paused before the apply), an
#                     alpaca already tinted violet behind. Unnatural tint on purpose. Decor: hay, DR_StickLantern lit, feed trough. No brazier, no bed.
#                     Subtitle: "Next in line: the barn horse."
# 5 bridge-5-dusk     river-bridge 17:30 wide, closing. Nelim walks home across the bridge, Shogun and the teal labrador follow (mid-stride), a tinted
#                     horse grazes far away, DR_StickLantern lit, golden light. Subtitle: "Home at dusk, with a few new colours."
# 6 ui-6-genepack     interface window (not rated), window-backdrop-for-height, cropped, no subtitle: genepack Genes tab, "Chest patch" with its icon.
# Mods for the -DepMap: wsl-deps.acg-marking.map + outfit mods from NSB wsl-deps.sanctuary-daily.map (LisaWork, earrings) + Mlie.StickLantern 2024351846.
# Director remarks: kept all but two. Shot 2 (vial close) cut, the Kuru shot became the close shot. Not taken: asking validation for Kuru (his chest
# patch is NSB canon, rule 3 covers colonist properties only); Tama dropped as a second subject.
Feature: ACG gallery
