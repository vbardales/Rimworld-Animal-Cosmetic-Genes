using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using RimWorld;
using Verse;

namespace AnimalCosmeticGenes
{
    /// <summary>
    /// The one place where a gene becomes a trait on an animal. The serum applier and, later, the spiritual guide's power
    /// both end here: read the trait the gene names, check the Animal Traits System rules, add the hediff.
    /// The Animal Traits System is read by reflection (its extension is found by type name), so this assembly has no
    /// compile-time reference to a third-party DLL that cannot be redistributed.
    /// </summary>
    public static class AnimalTraitGrant
    {
        private const string AtsExtensionTypeName = "AnimalTraitExtension.AnimalTraitExtension";

        private static Dictionary<string, HediffDef> traitByGene;

        public static HediffDef TraitFor(GeneDef gene)
        {
            if (gene == null)
            {
                return null;
            }
            if (traitByGene == null)
            {
                traitByGene = new Dictionary<string, HediffDef>();
                foreach (GeneTraitMapDef map in DefDatabase<GeneTraitMapDef>.AllDefsListForReading)
                {
                    foreach (GeneTraitMapping mapping in map.mappings)
                    {
                        if (traitByGene.ContainsKey(mapping.gene))
                        {
                            Log.Warning("Animal Cosmetic Genes: gene " + mapping.gene + " is mapped twice, the first mapping is kept (" + map.defName + ")");
                            continue;
                        }
                        traitByGene.Add(mapping.gene, mapping.trait);
                    }
                }
            }
            return traitByGene.TryGetValue(gene.defName, out HediffDef trait) ? trait : null;
        }

        // A coat tint is drawn through skinColorTint or skinColorOverride; the first one on the list wins, so an animal gets one.
        private static bool IsCoatTint(HediffDef def) => def.skinColorTint.HasValue || def.skinColorOverride.HasValue;

        /// <summary>The genes of a gene set that name a trait, in the set's order.</summary>
        public static IEnumerable<GeneDef> MappedGenes(GeneSet geneSet) =>
            geneSet == null ? Enumerable.Empty<GeneDef>() : geneSet.GenesListForReading.Where(g => TraitFor(g) != null);

        public static bool CanGrant(Pawn animal, GeneDef gene, out string reason)
        {
            reason = null;
            if (animal == null || animal.Dead || animal.RaceProps == null || !animal.RaceProps.Animal || animal.health?.hediffSet == null)
            {
                reason = "ACG_RefuseNotAnimal".Translate();
                return false;
            }
            HediffDef trait = TraitFor(gene);
            if (trait == null)
            {
                reason = "ACG_RefuseNoTrait".Translate();
                return false;
            }
            if (animal.health.hediffSet.HasHediff(trait))
            {
                reason = "ACG_RefuseHasTrait".Translate();
                return false;
            }
            if (IsCoatTint(trait) && animal.health.hediffSet.hediffs.Any(h => IsCoatTint(h.def)))
            {
                reason = "ACG_RefuseHasTint".Translate();
                return false;
            }
            ReadAtsLists(trait, out List<string> occurOnly, out List<string> exclusive);
            IEnumerable<string> held = animal.health.hediffSet.hediffs.Select(h => h.def.defName);
            if (AtsRules.Allows(occurOnly, exclusive, animal.def.defName, held, out string key, out string clash))
            {
                return true;
            }
            reason = key == AtsRules.KeySpecies
                ? key.Translate(animal.def.label)
                : key.Translate(DefDatabase<HediffDef>.GetNamedSilentFail(clash)?.label ?? clash);
            return false;
        }

        public static bool TryGrant(Pawn animal, GeneDef gene, out string reason)
        {
            if (!CanGrant(animal, gene, out reason))
            {
                return false;
            }
            animal.health.AddHediff(TraitFor(gene));
            return true;
        }

        // Reads occurOnlyInAnimals and exclusiveWithAnimalTrait of the Animal Traits System extension, if the trait carries one.
        private static void ReadAtsLists(HediffDef trait, out List<string> occurOnly, out List<string> exclusive)
        {
            occurOnly = null;
            exclusive = null;
            DefModExtension ext = trait.modExtensions?.FirstOrDefault(e => e.GetType().FullName == AtsExtensionTypeName);
            if (ext == null)
            {
                return;
            }
            System.Type type = ext.GetType();
            occurOnly = type.GetField("occurOnlyInAnimals", BindingFlags.Public | BindingFlags.Instance)?.GetValue(ext) as List<string>;
            exclusive = type.GetField("exclusiveWithAnimalTrait", BindingFlags.Public | BindingFlags.Instance)?.GetValue(ext) as List<string>;
        }
    }
}