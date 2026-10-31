using RimWorld;
using Verse;

namespace AnimalCosmeticGenes
{
    [DefOf]
    public static class AcgJobDefOf
    {
        public static JobDef ACG_ApplyAnimalTraitSerum;

        static AcgJobDefOf()
        {
            DefOfHelper.EnsureInitializedInCtor(typeof(AcgJobDefOf));
        }
    }
}
