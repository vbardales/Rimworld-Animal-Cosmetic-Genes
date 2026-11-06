using System.Collections.Generic;
using System.Linq;

namespace AnimalCosmeticGenes
{
    /// <summary>
    /// The two rules of the Animal Traits System that a trait must respect when it is given outside its own draw:
    /// the species list (occurOnlyInAnimals, empty = every species) and the exclusivity list (exclusiveWithAnimalTrait,
    /// defNames of traits that cannot be held together). Pure functions on lists, so they are tested without the game.
    /// </summary>
    public static class AtsRules
    {
        // Keyed translation keys of the two refusals: this file stays free of the game, the caller translates (clash = defName held, for KeyExclusive).
        public const string KeySpecies = "ACG_RefuseSpecies";
        public const string KeyExclusive = "ACG_RefuseExclusive";

        public static bool Allows(IList<string> occurOnlyInAnimals, IList<string> exclusiveWithAnimalTrait, string animalDefName, IEnumerable<string> heldDefNames, out string reasonKey, out string clash)
        {
            reasonKey = null;
            clash = null;
            if (occurOnlyInAnimals != null && occurOnlyInAnimals.Count > 0 && !occurOnlyInAnimals.Contains(animalDefName))
            {
                reasonKey = KeySpecies;
                return false;
            }
            if (exclusiveWithAnimalTrait != null && exclusiveWithAnimalTrait.Count > 0)
            {
                clash = heldDefNames.FirstOrDefault(exclusiveWithAnimalTrait.Contains);
                if (clash != null)
                {
                    reasonKey = KeyExclusive;
                    return false;
                }
            }
            return true;
        }
    }
}