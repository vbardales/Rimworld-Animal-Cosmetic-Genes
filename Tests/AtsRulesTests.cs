using System;
using System.Collections.Generic;
using AnimalCosmeticGenes;

internal static class AtsRulesTests
{
    private static int failures;

    private static readonly string[] None = new string[0];

    internal static int Run()
    {
        // No list on the trait: every species, any held trait.
        Check("null lists allow", true, null, null, "Cat", new[] { "AnimalTrait_Fast" });
        Check("empty lists allow", true, new List<string>(), new List<string>(), "Cat", new[] { "AnimalTrait_Fast" });
        Check("no held trait allows", true, new List<string> { "Cat" }, new List<string> { "AnimalTrait_CoatFrost" }, "Cat", None);

        // Species list: empty means every species, otherwise the animal's defName must be on it.
        Check("species on the list", true, new List<string> { "Cat", "Thrumbo" }, null, "Thrumbo", None);
        Check("species off the list", false, new List<string> { "Cat" }, null, "Thrumbo", None, AtsRules.KeySpecies);
        Check("species compare is exact case", false, new List<string> { "cat" }, null, "Cat", None, AtsRules.KeySpecies);

        // Exclusivity list: one held defName on it blocks, the first one found is named.
        var exclusive = new List<string> { "AnimalTrait_CoatEmber", "AnimalTrait_CoatAsh" };
        Check("held trait is exclusive", false, null, exclusive, "Cat", new[] { "AnimalTrait_Fast", "AnimalTrait_CoatAsh" }, AtsRules.KeyExclusive, "AnimalTrait_CoatAsh");
        Check("held traits not exclusive", true, null, exclusive, "Cat", new[] { "AnimalTrait_Fast", "Malnutrition" });

        // Species is checked first: a wrong species reports the species, not the clash.
        Check("species reported before clash", false, new List<string> { "Cat" }, exclusive, "Dog", new[] { "AnimalTrait_CoatAsh" }, AtsRules.KeySpecies);

        if (failures == 0)
        {
            Console.WriteLine("AtsRules: all passed");
        }
        return failures == 0 ? 0 : 1;
    }

    private static void Check(string name, bool expected, IList<string> species, IList<string> exclusive, string animal, IEnumerable<string> held, string expectedReason = null, string expectedClash = null)
    {
        bool actual = AtsRules.Allows(species, exclusive, animal, held, out string reason, out string clash);
        bool ok = actual == expected && reason == expectedReason && clash == expectedClash;
        if (!ok)
        {
            failures++;
            Console.WriteLine("FAIL " + name + ": allowed " + actual + " (expected " + expected + "), reason \"" + reason + "\" (expected \"" + expectedReason + "\")");
        }
    }
}
