using System.Linq;
using RimWorld;
using Verse;

namespace AnimalCosmeticGenes
{
    /// <summary>
    /// Matches a genepack none of whose genes names a trait. The serum recipe lists it in specialFiltersToDisallow of its
    /// ingredient filter, so such a genepack is never taken and destroyed for nothing.
    /// </summary>
    public class UnmappedGenepackFilterWorker : SpecialThingFilterWorker
    {
        public override bool Matches(Thing t) => t is Genepack genepack && !AnimalTraitGrant.MappedGenes(genepack.GeneSet).Any();

        public override bool CanEverMatch(ThingDef def) => typeof(Genepack).IsAssignableFrom(def.thingClass);
    }
}
