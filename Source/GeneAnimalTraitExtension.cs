using Verse;

namespace AnimalCosmeticGenes
{
    /// <summary>
    /// Put on a GeneDef (by XML patch, so the gene's own mod is not redefined) to name the Animal Traits System trait
    /// an animal gets when this gene is integrated into it. One trait per gene: the colour belongs to the gene.
    /// </summary>
    public class GeneAnimalTraitExtension : DefModExtension
    {
        public HediffDef trait;
    }
}