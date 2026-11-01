# ACG chest patch (2026-11-02): the marking trait AnimalTrait_ChestPatch (Mod/Defs/Markings.xml, node PawnRenderNode_CoatMarking) on Kuru's kind,
# the black cat akaNEKO_kuroneko of Let's Have a Cat! Continued (3682940618). Ticket 7119 passed but the cat faced north, so the patch was not seen;
# this version turns the animal (NPT step "the animal ... faces ...", module CoatSteps) to south, east and west.
@review @timeout:900 @requires:nelim.pickletools.screenshotstudio @requires:nelim.pickletools.colonistrace @requires:nelim.pickletools.camerazoom @requires:nelim.pickletools.coatsteps
Feature: ACG chest patch

  Scenario: acg-chest-patch-kuroneko
    Given the save "Nelims-tribe" is loaded
    And game speed is paused
    And Nelim's Pickle Tools: the error log is marked
    And Nelim's Pickle Tools: the item and name labels are hidden
    And Nelim's Pickle Tools: the tooltips are hidden
    And Nelim's Pickle Tools: the colonist bar is hidden
    And Nelim's Pickle Tools: the learning helper is hidden
    And Nelim's Pickle Tools: the temperature of the map is 20 degrees
    And Nelim's Pickle Tools: all humans but "Nelim" are removed
    And Nelim's Pickle Tools: I frame the area centred on (177, 121) at root size 6.5
    And Nelim's Pickle Tools: an adult animal of kind "akaNEKO_kuroneko" named "Kuru1" is spawned at (176, 120)
    And Nelim's Pickle Tools: the animal "Kuru1" faces south
    And Nelim's Pickle Tools: I frame the animal "Kuru1" at zoom 2
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgpatch-kuroneko-0-before-south"
    Given Nelim's Pickle Tools: the animal "Kuru1" has the hediff "AnimalTrait_ChestPatch"
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgpatch-kuroneko-1-patch-south"
    Given Nelim's Pickle Tools: the animal "Kuru1" faces east
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgpatch-kuroneko-2-patch-east"
    Given Nelim's Pickle Tools: the animal "Kuru1" faces west
    When Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgpatch-kuroneko-3-patch-west"
    Given Nelim's Pickle Tools: the animal "Kuru1" faces south
    When Nelim's Pickle Tools: the animal "Kuru1" loses the hediff "AnimalTrait_ChestPatch"
    And Nelim's Pickle Tools: I let 5 frames pass
    Then I take a screenshot "acgpatch-kuroneko-4-removed-south"
    And Nelim's Pickle Tools: no error was logged since the error log was marked
