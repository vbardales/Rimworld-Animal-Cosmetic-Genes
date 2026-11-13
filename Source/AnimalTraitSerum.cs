using RimWorld;
using UnityEngine;
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

        // The vial liquid is the colour of the coat tint the gene gives (the texture liquid is grey, masked by ACG_Serum_m,
        // tinted through DrawColor). A gene with no colour of its own (a marking) keeps the original turquoise.
        private static readonly Color DefaultLiquid = new Color(0.25f, 0.70f, 0.67f, 1f);

        private Graphic tintedGraphic;

        public override Color DrawColor
        {
            get
            {
                HediffDef trait = AnimalTraitGrant.TraitFor(gene);
                if (trait != null)
                {
                    if (trait.skinColorTint.HasValue)
                    {
                        return trait.skinColorTint.Value;
                    }
                    if (trait.skinColorOverride.HasValue)
                    {
                        return trait.skinColorOverride.Value;
                    }
                }
                return DefaultLiquid;
            }
        }

        // Thing caches its graphic at first use, before Initialize or ExposeData has set the gene: keep our own, rebuilt on gene change.
        public override Graphic Graphic
        {
            get
            {
                if (tintedGraphic == null)
                {
                    tintedGraphic = def.graphicData.GraphicColoredFor(this);
                }
                return tintedGraphic;
            }
        }

        public override string LabelNoCount => gene != null ? gene.label : base.LabelNoCount;

        public void Initialize(GeneDef gene)
        {
            this.gene = gene;
            tintedGraphic = null;
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
            if (Scribe.mode == LoadSaveMode.PostLoadInit)
            {
                tintedGraphic = null;
            }
        }
    }
}
