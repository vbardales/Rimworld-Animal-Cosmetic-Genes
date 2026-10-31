# ACG phase 1 (2026-10-31): the three real coat-tint traits (AnimalTrait_CoatEmber, CoatFrost, CoatAsh of Mod/Defs), added by the step, photographed on four animals. Model: acg-spike.
@review @timeout:900 @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.camerazoom
Feature: ACG coat tint traits

  Scenario: acg-coat-thrumbo
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
    Then I take a screenshot "acgcoat-thrumbo-0-before"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_CoatEmber"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-thrumbo-1-coatember"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_CoatEmber"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_CoatFrost"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-thrumbo-2-coatfrost"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_CoatFrost"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_CoatAsh"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-thrumbo-3-coatash"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_CoatAsh"

  Scenario: acg-coat-cat
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
    Then I take a screenshot "acgcoat-cat-0-before"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_CoatEmber"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-cat-1-coatember"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_CoatEmber"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_CoatFrost"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-cat-2-coatfrost"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_CoatFrost"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_CoatAsh"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-cat-3-coatash"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_CoatAsh"

  Scenario: acg-coat-labrador
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the item and name labels are hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And Nelim's Pickle Tools: I frame the area centred on (177, 121) at root size 6.5
    And Nelim's Pickle Tools: an adult animal of kind "LabradorRetriever" named "Spike1" is spawned at (176, 120)
    And Nelim's Pickle Tools: I frame the animal "Spike1" at zoom 2
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-labrador-0-before"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_CoatEmber"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-labrador-1-coatember"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_CoatEmber"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_CoatFrost"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-labrador-2-coatfrost"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_CoatFrost"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_CoatAsh"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-labrador-3-coatash"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_CoatAsh"

  Scenario: acg-coat-panther
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the item and name labels are hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And Nelim's Pickle Tools: I frame the area centred on (177, 121) at root size 6.5
    And Nelim's Pickle Tools: an adult animal of kind "Panther" named "Spike1" is spawned at (176, 120)
    And Nelim's Pickle Tools: I frame the animal "Spike1" at zoom 2
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-panther-0-before"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_CoatEmber"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-panther-1-coatember"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_CoatEmber"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_CoatFrost"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-panther-2-coatfrost"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_CoatFrost"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "AnimalTrait_CoatAsh"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgcoat-panther-3-coatash"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "AnimalTrait_CoatAsh"

