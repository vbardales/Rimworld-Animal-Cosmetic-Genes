# ACG serum chain (2026-10-31): the generated traits and the map Def load without error, then a colonist applies a serum
# to an animal through the real right-click option (ColonistRace SerumChainSteps), and a second tint is refused.
# Not played: the recipe and the workbench (none yet). Whether a spawned animal belongs to the player is what the pick tests.
@requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.screenshotstudio
Feature: ACG serum chain

  Scenario: acg-load-clean
    Then no errors were logged
    And def "ACG_CoatTintGenes" of type "GeneTraitMapDef" exists
    And def "AnimalTrait_Hair_Blonde" of type "HediffDef" exists
    And def "ACG_AnimalTraitSerum" of type "ThingDef" exists

  Scenario: acg-serum-apply
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the error log is marked
    And game speed is normal
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And Nelim's Pickle Tools: an adult animal of kind "Thrumbo" named "Spike1" is spawned at (176, 120)
    And Nelim's Pickle Tools: the item "ACG_AnimalTraitSerum" is spawned at (178, 121) with the field "gene" set to the def "Skin_Blue"
    Then Nelim's Pickle Tools: the float menu options of "Nelim" on "Spike1" are listed
    When Nelim's Pickle Tools: "Nelim" picks the float menu option "Apply blue skin" on "Spike1"
    And Nelim's Pickle Tools: I let 5000 ticks pass
    Then Nelim's Pickle Tools: the animal "Spike1" holds the hediff "AnimalTrait_Skin_Blue"
    And Nelim's Pickle Tools: the thing "ACG_AnimalTraitSerum" is gone from (178, 121)
    And Nelim's Pickle Tools: no error was logged since the error log was marked

  Scenario: acg-serum-second-tint-refused
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the error log is marked
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And Nelim's Pickle Tools: an adult animal of kind "Thrumbo" named "Spike1" is spawned at (176, 120)
    And Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_Skin_Blue"
    And Nelim's Pickle Tools: the item "ACG_AnimalTraitSerum" is spawned at (178, 121) with the field "gene" set to the def "Skin_Orange"
    Then Nelim's Pickle Tools: "Nelim" cannot pick the float menu option "Apply orange skin" on "Spike1"
    And Nelim's Pickle Tools: "Spike1" does not hold the hediff "AnimalTrait_Skin_Orange"
    And Nelim's Pickle Tools: no error was logged since the error log was marked

  # French copy: the float menu step matches the label of the language the game runs in (run d580, 2026-11-07).
  Scenario: acg-serum-second-tint-refused-fr
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the error log is marked
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And Nelim's Pickle Tools: an adult animal of kind "Thrumbo" named "Spike1" is spawned at (176, 120)
    And Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_Skin_Blue"
    And Nelim's Pickle Tools: the item "ACG_AnimalTraitSerum" is spawned at (178, 121) with the field "gene" set to the def "Skin_Orange"
    Then Nelim's Pickle Tools: "Nelim" cannot pick the float menu option "Appliquer peau orange à Spike1" on "Spike1"
    And Nelim's Pickle Tools: "Spike1" does not hold the hediff "AnimalTrait_Skin_Orange"
    And Nelim's Pickle Tools: no error was logged since the error log was marked

  # 2026-11-13 (1.2.0): the liquid of a serum takes the colour of the tint its gene gives. Three serums side by side on the bench cell:
  # Skin_Blue, Skin_Orange and ACG_ChestPatch (a marking, no colour of its own: turquoise fallback). Read the capture: three vials, three liquids.
  @review @timeout:300 @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.camerazoom
  Scenario: acg-serum-tint-look
    Given the save "Nelims-tribe" is loaded
    And Nelim's Pickle Tools: the error log is marked
    And Nelim's Pickle Tools: the item and name labels are hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And Nelim's Pickle Tools: the item "ACG_AnimalTraitSerum" is spawned at (176, 121) with the field "gene" set to the def "Skin_Blue"
    And Nelim's Pickle Tools: the item "ACG_AnimalTraitSerum" is spawned at (177, 121) with the field "gene" set to the def "Skin_Orange"
    And Nelim's Pickle Tools: the item "ACG_AnimalTraitSerum" is spawned at (178, 121) with the field "gene" set to the def "ACG_ChestPatch"
    And game speed is paused
    And Nelim's Pickle Tools: I frame the area centred on (177, 121) at root size 4
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgserum-tint-three-vials"
    And Nelim's Pickle Tools: no error was logged since the error log was marked
