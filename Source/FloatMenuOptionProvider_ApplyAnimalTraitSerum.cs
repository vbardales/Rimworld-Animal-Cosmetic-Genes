using System.Collections.Generic;
using RimWorld;
using Verse;
using Verse.AI;

namespace AnimalCosmeticGenes
{
    /// <summary>
    /// Right-click on one of the player's animals with a colonist selected: one option per gene for which a serum can
    /// be reached, "Apply X to Y". The game finds provider classes by reflection, nothing registers this one.
    /// An animal that cannot take the trait gets the option greyed, with the reason from AnimalTraitGrant.
    /// </summary>
    public class FloatMenuOptionProvider_ApplyAnimalTraitSerum : FloatMenuOptionProvider
    {
        protected override bool Drafted => false;

        protected override bool Undrafted => true;

        protected override bool Multiselect => false;

        protected override bool RequiresManipulation => true;

        public override IEnumerable<FloatMenuOption> GetOptionsFor(Pawn clickedPawn, FloatMenuContext context)
        {
            if (!clickedPawn.RaceProps.Animal || clickedPawn.Faction != Faction.OfPlayer)
            {
                yield break;
            }
            Pawn colonist = context.FirstSelectedPawn;
            var offered = new HashSet<GeneDef>();
            foreach (Thing thing in context.map.listerThings.ThingsOfDef(AcgThingDefOf.ACG_AnimalTraitSerum))
            {
                var serum = (AnimalTraitSerum)thing;
                if (serum.Gene == null || offered.Contains(serum.Gene) || serum.IsForbidden(colonist)
                    || !colonist.CanReserveAndReach(serum, PathEndMode.ClosestTouch, Danger.Deadly))
                {
                    continue;
                }
                offered.Add(serum.Gene);
                string label = "ACG_ApplySerum".Translate(serum.LabelNoCount, clickedPawn.LabelShort);
                if (!AnimalTraitGrant.CanGrant(clickedPawn, serum.Gene, out string reason))
                {
                    yield return new FloatMenuOption(label + " (" + reason + ")", null);
                    continue;
                }
                yield return FloatMenuUtility.DecoratePrioritizedTask(new FloatMenuOption(label, delegate
                {
                    Job job = JobMaker.MakeJob(AcgJobDefOf.ACG_ApplyAnimalTraitSerum, clickedPawn, serum);
                    job.count = 1;
                    colonist.jobs.TryTakeOrderedJob(job, JobTag.Misc);
                }), colonist, clickedPawn);
            }
        }
    }
}
