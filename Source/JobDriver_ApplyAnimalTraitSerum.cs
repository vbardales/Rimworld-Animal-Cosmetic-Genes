using System.Collections.Generic;
using RimWorld;
using Verse;
using Verse.AI;

namespace AnimalCosmeticGenes
{
    /// <summary>
    /// A colonist takes a serum to an animal and applies it. Target A is the animal, target B the serum. The colonist
    /// fetches the serum, walks up to the animal, holds it still while applying (progress bar), then AnimalTraitGrant
    /// checks the Animal Traits System rules and adds the trait. The serum is destroyed only when the trait was added.
    /// </summary>
    public class JobDriver_ApplyAnimalTraitSerum : JobDriver
    {
        private const int ApplyTicks = 180;

        private Pawn Animal => (Pawn)job.GetTarget(TargetIndex.A).Thing;

        public override bool TryMakePreToilReservations(bool errorOnFailed)
        {
            return pawn.Reserve(job.GetTarget(TargetIndex.A), job, 1, -1, null, errorOnFailed)
                && pawn.Reserve(job.GetTarget(TargetIndex.B), job, 1, -1, null, errorOnFailed);
        }

        protected override IEnumerable<Toil> MakeNewToils()
        {
            this.FailOnDespawnedOrNull(TargetIndex.A);
            this.FailOnDestroyedOrNull(TargetIndex.B);
            yield return Toils_Goto.GotoThing(TargetIndex.B, PathEndMode.ClosestTouch).FailOnDespawnedNullOrForbidden(TargetIndex.B);
            yield return Toils_Haul.StartCarryThing(TargetIndex.B);
            yield return Toils_Goto.GotoThing(TargetIndex.A, PathEndMode.Touch);
            yield return Toils_General.WaitWith(TargetIndex.A, ApplyTicks, useProgressBar: true, maintainPosture: true);
            yield return Toils_General.Do(Apply);
        }

        private void Apply()
        {
            var serum = pawn.carryTracker.CarriedThing as AnimalTraitSerum;
            if (serum == null)
            {
                return;
            }
            HediffDef trait = AnimalTraitGrant.TraitFor(serum.Gene);
            if (AnimalTraitGrant.TryGrant(Animal, serum.Gene, out string reason))
            {
                serum.Destroy();
                Messages.Message("ACG_SerumApplied".Translate(Animal.LabelShort, trait.LabelCap), Animal, MessageTypeDefOf.PositiveEvent, historical: false);
            }
            else
            {
                pawn.carryTracker.TryDropCarriedThing(pawn.Position, ThingPlaceMode.Near, out Thing _);
                Messages.Message(reason, Animal, MessageTypeDefOf.RejectInput, historical: false);
            }
        }
    }
}
