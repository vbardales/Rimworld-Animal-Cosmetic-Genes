using RimWorld;
using Verse;

namespace AnimalCosmeticGenes
{
    [DefOf]
    public static class AcgThingDefOf
    {
        public static ThingDef ACG_AnimalTraitSerum;

        static AcgThingDefOf()
        {
            DefOfHelper.EnsureInitializedInCtor(typeof(AcgThingDefOf));
        }
    }
}
