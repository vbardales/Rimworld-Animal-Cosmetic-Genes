# ACG route A (2026-10-31): generated coat tint traits (Mod/Defs/Hediffs_GeneTints.xml), added by the step, photographed: a Biotech skin gene, a Biotech hair gene (template-built), a Genes Expanded skin gene, a dark hair gene. Model: acg-coat-traits.
@review @timeout:900 @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.camerazoom
Feature: ACG gene tint traits

  Scenario: acg-gene-tint-thrumbo
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the item and name labels are hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And Nelim's Pickle Tools: I frame the area centred on (177, 121) at root size 6.5
    And Nelim's Pickle Tools: an adult animal of kind "Thrumbo" named "Spike1" is spawned at (176, 120)
    And Nelim's Pickle Tools: I frame the animal "Spike1" at zoom 2
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acggene-thrumbo-0-before"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_Skin_Blue"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acggene-thrumbo-1-skinblue"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_Skin_Blue"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_Hair_Blonde"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acggene-thrumbo-2-hairblonde"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_Hair_Blonde"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_GES_Skin_FireRed"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acggene-thrumbo-3-gesskinfirered"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_GES_Skin_FireRed"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_Hair_InkBlack"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acggene-thrumbo-4-hairinkblack"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_Hair_InkBlack"

  Scenario: acg-gene-tint-cat
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the item and name labels are hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And Nelim's Pickle Tools: I frame the area centred on (177, 121) at root size 6.5
    And Nelim's Pickle Tools: an adult animal of kind "Cat" named "Spike1" is spawned at (176, 120)
    And Nelim's Pickle Tools: I frame the animal "Spike1" at zoom 2
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acggene-cat-0-before"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_Skin_Blue"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acggene-cat-1-skinblue"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_Skin_Blue"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_Hair_Blonde"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acggene-cat-2-hairblonde"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_Hair_Blonde"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_GES_Skin_FireRed"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acggene-cat-3-gesskinfirered"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_GES_Skin_FireRed"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_Hair_InkBlack"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acggene-cat-4-hairinkblack"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_Hair_InkBlack"

