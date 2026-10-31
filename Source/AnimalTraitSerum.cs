using RimWorld;
using Verse;

namespace AnimalCosmeticGenes
{
    /// <summary>
    /// A serum that carries one gene. It is named after the gene label, like the genepack it was made from, and a
    /// colonist applies it to an animal to give it the trait that gene names (AnimalTraitGrant). One gene per serum,
    /// so the stack limit is 1 in the ThingDef: two serums of different genes never merge.
    /// </summary>
    public class AnimalTraitSerum : ThingWithComps
    {
        private GeneDef gene;

        public GeneDef Gene => gene;

        public override string LabelNoCount => gene != null ? gene.label : base.LabelNoCount;

        public void Initialize(GeneDef gene)
        {
            this.gene = gene;
        }

        public override string GetInspectString()
        {
            string text = base.GetInspectString();
            HediffDef trait = AnimalTraitGrant.TraitFor(gene);
            if (trait == null)
            {
                return text;
            }
            return (text.NullOrEmpty() ? "" : text + "\n") + trait.LabelCap;
        }

        public override void ExposeData()
        {
            base.ExposeData();
            Scribe_Defs.Look(ref gene, "gene");
        }
    }
}
