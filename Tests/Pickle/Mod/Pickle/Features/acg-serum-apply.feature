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
    And Nelim's Pickle Tools: I let 600 ticks pass
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
