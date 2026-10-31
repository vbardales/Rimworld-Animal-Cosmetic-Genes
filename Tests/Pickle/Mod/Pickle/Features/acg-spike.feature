# ACG spike (2026-10-31): does a hediff skinColorTint or skinColorOverride recolour an animal body? Four animals, three photographs each (before, tint, override). Panther = dark coat.
@review @timeout:900 @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.camerazoom
Feature: ACG spike, hediff skin colour on animals

  Scenario: acg-spike-thrumbo
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
    Then I take a screenshot "acg-thrumbo-0-before"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "ACGSpike_RedTint"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acg-thrumbo-1-tint"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "ACGSpike_RedTint"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "ACGSpike_RedOverride"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acg-thrumbo-2-override"

  Scenario: acg-spike-cat
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
    Then I take a screenshot "acg-cat-0-before"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "ACGSpike_RedTint"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acg-cat-1-tint"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "ACGSpike_RedTint"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "ACGSpike_RedOverride"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acg-cat-2-override"

  Scenario: acg-spike-labrador
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
    Then I take a screenshot "acg-labrador-0-before"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "ACGSpike_RedTint"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acg-labrador-1-tint"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "ACGSpike_RedTint"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "ACGSpike_RedOverride"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acg-labrador-2-override"

  Scenario: acg-spike-panther
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
    Then I take a screenshot "acg-panther-0-before"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "ACGSpike_RedTint"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acg-panther-1-tint"
    When Nelim's Pickle Tools: the animal "Spike1" loses the hediff "ACGSpike_RedTint"
    Given Nelim's Pickle Tools: the animal "Spike1" has the hediff "ACGSpike_RedOverride"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acg-panther-2-override"

