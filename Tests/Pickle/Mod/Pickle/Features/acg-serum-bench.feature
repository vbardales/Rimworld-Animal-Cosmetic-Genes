# ACG serum bench (2026-11-02): the bench exists and offers the serum recipe. The bill run to the end (genepack in, serums out)
# waits for the NPT step "the bill ... is run to the end", announced and not compiled yet.
@requires:nelim.pickletools.colonistrace
Feature: ACG serum bench

  Scenario: acg-serum-bench-recipe
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the error log is marked
    Then def "ACG_SerumBench" of type "ThingDef" exists
    And Nelim's Pickle Tools: the recipe for "ACG_MakeAnimalTraitSerum" is available at "ACG_SerumBench"
    And Nelim's Pickle Tools: a bill for "ACG_MakeAnimalTraitSerum" allows "Genepack"
    And Nelim's Pickle Tools: no error was logged since the error log was marked

  # 2026-11-02: the whole chain with the bench: a genepack holding ACG_ChestPatch goes in a bill, Nelim works the bill at the bench, a serum
  # comes out, Nelim applies it to Kuru1 (black cat of Let's Have a Cat! Continued) through the float menu, the chest patch is drawn.
  # Run it with the map wsl-deps.acg-marking.map (the cat mod and the facing step).
  @review @timeout:900 @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.camerazoom @requires:nelim.pickletools.coatsteps
  Scenario: acg-serum-bench-chain
    Given the save "Nelims-tribe" is loaded
    And game speed is normal
    And Nelim's Pickle Tools: the error log is marked
    And Nelim's Pickle Tools: the item and name labels are hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And Nelim's Pickle Tools: an adult animal of kind "akaNEKO_kuroneko" named "Kuru1" is spawned at (176, 120)
    And Nelim's Pickle Tools: the building "ACG_SerumBench" is spawned at (178, 120)
    And Nelim's Pickle Tools: a genepack with the genes "ACG_ChestPatch" is spawned at (178, 119)
    And Nelim's Pickle Tools: the building "ACG_SerumBench" at (178, 120) has the bill "ACG_MakeAnimalTraitSerum"
    Given Nelim's Pickle Tools: "Nelim" is forced into the job "DoBill" on the building "ACG_SerumBench" at (178, 120)
    When Nelim's Pickle Tools: I wait up to 5000 ticks or 240 seconds until more "ACG_AnimalTraitSerum" exist
    Then Nelim's Pickle Tools: the float menu options of "Nelim" on "Kuru1" are listed
    When Nelim's Pickle Tools: "Nelim" picks the float menu option "Apply chest patch" on "Kuru1"
    And Nelim's Pickle Tools: I let 1500 ticks pass
    Then Nelim's Pickle Tools: the animal "Kuru1" holds the hediff "AnimalTrait_ChestPatch"
    Given game speed is paused
    And Nelim's Pickle Tools: the animal "Kuru1" faces south
    And Nelim's Pickle Tools: I frame the area centred on (177, 121) at root size 6.5
    And Nelim's Pickle Tools: I frame the animal "Kuru1" at zoom 2
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgbench-kuroneko-patch-south"
    And Nelim's Pickle Tools: no error was logged since the error log was marked

  # French copy of the chain: the float menu step matches the label of the language the game runs in (found by run 0f31).
  @review @timeout:900 @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.camerazoom @requires:nelim.pickletools.coatsteps
  Scenario: acg-serum-bench-chain-fr
    Given the save "Nelims-tribe" is loaded
    And game speed is normal
    And Nelim's Pickle Tools: the error log is marked
    And Nelim's Pickle Tools: the item and name labels are hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And Nelim's Pickle Tools: an adult animal of kind "akaNEKO_kuroneko" named "Kuru1" is spawned at (176, 120)
    And Nelim's Pickle Tools: the building "ACG_SerumBench" is spawned at (178, 120)
    And Nelim's Pickle Tools: a genepack with the genes "ACG_ChestPatch" is spawned at (178, 119)
    And Nelim's Pickle Tools: the building "ACG_SerumBench" at (178, 120) has the bill "ACG_MakeAnimalTraitSerum"
    Given Nelim's Pickle Tools: "Nelim" is forced into the job "DoBill" on the building "ACG_SerumBench" at (178, 120)
    When Nelim's Pickle Tools: I wait up to 5000 ticks or 240 seconds until more "ACG_AnimalTraitSerum" exist
    Then Nelim's Pickle Tools: the float menu options of "Nelim" on "Kuru1" are listed
    When Nelim's Pickle Tools: "Nelim" picks the float menu option "Appliquer plastron blanc à Kuru1" on "Kuru1"
    And Nelim's Pickle Tools: I let 1500 ticks pass
    Then Nelim's Pickle Tools: the animal "Kuru1" holds the hediff "AnimalTrait_ChestPatch"
    Given game speed is paused
    And Nelim's Pickle Tools: the animal "Kuru1" faces south
    And Nelim's Pickle Tools: I frame the area centred on (177, 121) at root size 6.5
    And Nelim's Pickle Tools: I frame the animal "Kuru1" at zoom 2
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgbench-kuroneko-patch-south-fr"
    And Nelim's Pickle Tools: no error was logged since the error log was marked

  # 2026-11-02: look of the bench and of a serum on the ground (the chain frames the cat, not the bench). The gene icon shows in the
  # gene UI, not on the map: no scenario frames it yet.
  @review @timeout:600 @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.camerazoom
  Scenario: acg-serum-bench-look
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the error log is marked
    And Nelim's Pickle Tools: the item and name labels are hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And Nelim's Pickle Tools: the building "ACG_SerumBench" is spawned at (178, 120)
    And Nelim's Pickle Tools: the item "ACG_AnimalTraitSerum" is spawned at (178, 122) with the field "gene" set to the def "ACG_ChestPatch"
    And Nelim's Pickle Tools: I frame the area centred on (178, 121) at root size 4
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgbench-look-bench"
    And Nelim's Pickle Tools: I frame the area centred on (178, 122) at root size 1.5
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgbench-look-serum"
    And Nelim's Pickle Tools: no error was logged since the error log was marked
