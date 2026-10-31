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
        public static bool Allows(IList<string> occurOnlyInAnimals, IList<string> exclusiveWithAnimalTrait, string animalDefName, IEnumerable<string> heldDefNames, out string reason)
        {
            reason = null;
            if (occurOnlyInAnimals != null && occurOnlyInAnimals.Count > 0 && !occurOnlyInAnimals.Contains(animalDefName))
            {
                reason = "this trait does not occur in " + animalDefName;
                return false;
            }
            if (exclusiveWithAnimalTrait != null && exclusiveWithAnimalTrait.Count > 0)
            {
                string clash = heldDefNames.FirstOrDefault(exclusiveWithAnimalTrait.Contains);
                if (clash != null)
                {
                    reason = "the animal already holds " + clash + ", exclusive with this trait";
                    return false;
                }
            }
            return true;
        }
    }
}