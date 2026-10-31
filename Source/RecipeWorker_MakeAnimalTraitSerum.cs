using System.Collections.Generic;
using RimWorld;
using Verse;

namespace AnimalCosmeticGenes
{
    /// <summary>
    /// The workbench bill: a genepack goes in (the game destroys it as an ingredient), one serum comes out for each of its
    /// genes that names a trait. The recipe has no product in XML because the serum's gene is only known from the genepack,
    /// so the worker makes the serums itself and drops them by the colonist, as the game does for a bill set to drop on
    /// the floor. A genepack with no mapped gene never reaches here: UnmappedGenepackFilterWorker keeps it out of the bill.
    /// </summary>
    public class RecipeWorker_MakeAnimalTraitSerum : RecipeWorker
    {
        public override void Notify_IterationCompleted(Pawn billDoer, List<Thing> ingredients)
        {
            foreach (Thing ingredient in ingredients)
            {
                if (!(ingredient is Genepack genepack))
                {
                    continue;
                }
                foreach (GeneDef gene in AnimalTraitGrant.MappedGenes(genepack.GeneSet))
                {
                    var serum = (AnimalTraitSerum)ThingMaker.MakeThing(AcgThingDefOf.ACG_AnimalTraitSerum);
                    serum.Initialize(gene);
                    if (!GenPlace.TryPlaceThing(serum, billDoer.Position, billDoer.Map, ThingPlaceMode.Near))
                    {
                        Log.Error(billDoer + " could not drop serum " + serum + " near " + billDoer.Position);
                    }
                }
            }
        }
    }
}
