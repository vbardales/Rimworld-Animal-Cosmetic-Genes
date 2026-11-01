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
