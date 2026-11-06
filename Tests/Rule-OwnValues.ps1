param([Parameter(Mandatory)][string]$ModRoot, [string]$SharedDir)

# Own values and facts of this mod's content (generated coat tint traits, gene to trait maps, tint strength and inheritance,
# serum and bench defs, chest patch marking, About identity, dependencies, one DLL): one consumer, so nothing here is shareable;
# Tests/Test-Mod.ps1 (generated) runs it after the shared checks. Prints findings, exit 1 on any.
$ErrorActionPreference = 'Stop'
$ModPath = Join-Path (Resolve-Path -LiteralPath $ModRoot).Path 'Mod'
$script:findings = @()

# One rule: the block returns its problems; each is printed under the rule name.
function It([string]$name, [scriptblock]$body) {
    try { $problems = @(& $body | Where-Object { $_ }) } catch { $problems = @("threw: $($_.Exception.GetBaseException().Message)") }
    foreach ($p in $problems) { $script:findings += "[$name] $p" }
}
function Read-Xml([string]$rel) { [xml](Get-Content (Join-Path $ModPath $rel) -Raw -Encoding UTF8) }
function Ext($node) { $node.SelectSingleNode("modExtensions/li[@Class='AnimalTraitExtension.AnimalTraitExtension']") }

$tints = Read-Xml 'Defs/Hediffs_GeneTints.xml'
$tintTraits = @($tints.SelectNodes("/Defs/HediffDef[@ParentName='ACG_GeneTintBase']"))
$map = Read-Xml 'Defs/GeneTraitMap.xml'
$mappings = @($map.SelectNodes('//AnimalCosmeticGenes.GeneTraitMapDef[defName="ACG_CoatTintGenes"]/mappings/li'))

It 'Tint base keeps the design values' {
    $base = $tints.SelectSingleNode("/Defs/HediffDef[@Name='ACG_GeneTintBase']")
    if ($null -eq $base -or $base.Abstract -ne 'True') { 'ACG_GeneTintBase missing or not abstract' }
    elseif ([double]$base.skinColorTintStrength -ne 0.4) { 'Tint strength is not 0.4' }
}
It 'There are 241 generated tint traits, one per mapped gene' {
    if ($tintTraits.Count -ne 241) { "Expected 241 tint traits, found $($tintTraits.Count)" }
    if ($mappings.Count -ne 241) { "Expected 241 gene mappings, found $($mappings.Count)" }
}
It 'Every tint trait follows the framework contract' {
    foreach ($t in $tintTraits) {
        $n = $t.defName
        if (-not $n.StartsWith('AnimalTrait_')) { "$n lacks the AnimalTrait_ prefix" }
        $e = Ext $t
        if ($null -eq $e) { "$n has no AnimalTraitExtension"; continue }
        if ($e.isAnimalTrait -ne 'true') { "$n is not flagged isAnimalTrait" }
        if ($e.defaultWeight -ne '0') { "$n can be drawn at random" }
        if ($e.inheritChance -ne '40') { "$n inheritChance is not 40" }
        if ("AnimalTrait_$($e.traitName)" -ne $n) { "$n traitName does not match its defName" }
        if ($t.skinColorTint -notmatch '^\(\s*[\d.]+,\s*[\d.]+,\s*[\d.]+,\s*1\)$') { "$n has no valid skinColorTint" }
        if ($null -ne $t.SelectSingleNode('stages')) { "$n has a stage (the tint would not be drawn)" }
    }
}
It 'Every mapping points at an existing tint trait, once' {
    $names = @($tintTraits | ForEach-Object defName)
    $genes = @($mappings | ForEach-Object gene)
    if (@($genes | Select-Object -Unique).Count -ne $genes.Count) { 'A gene is mapped twice' }
    foreach ($m in $mappings) { if ($names -notcontains $m.trait) { "Gene $($m.gene) maps to unknown trait $($m.trait)" } }
    foreach ($n in $names) { if (@($mappings | Where-Object trait -eq $n).Count -ne 1) { "$n is not mapped exactly once" } }
}
It 'Hand-made coat tints keep their values' {
    $hand = Read-Xml 'Defs/Hediffs_CoatTints.xml'
    $expect = @{ AnimalTrait_CoatEmber = '0.35'; AnimalTrait_CoatFrost = '0.35'; AnimalTrait_CoatAsh = '0.4' }
    foreach ($k in $expect.Keys) {
        $d = $hand.SelectSingleNode("/Defs/HediffDef[defName='$k']")
        if ($null -eq $d) { "Missing $k"; continue }
        if ([double]$d.skinColorTintStrength -ne [double]$expect[$k]) { "$k tint strength changed" }
        $e = Ext $d
        if ($e.defaultWeight -ne '0' -or $e.inheritChance -ne '40') { "$k weight or inheritance changed" }
    }
}
It 'Chest patch gene, trait and map are consistent' {
    $mk = Read-Xml 'Defs/Markings.xml'
    $trait = $mk.SelectSingleNode("/Defs/HediffDef[defName='AnimalTrait_ChestPatch']")
    $gene = $mk.SelectSingleNode("/Defs/GeneDef[defName='ACG_ChestPatch']")
    if ($null -eq $trait) { 'AnimalTrait_ChestPatch missing'; return }
    if ($null -eq $gene) { 'ACG_ChestPatch gene missing' }
    $e = Ext $trait
    if ($e.traitName -ne 'ChestPatch' -or $e.defaultWeight -ne '0' -or $e.inheritChance -ne '40') { 'Chest patch extension values changed' }
    if ($trait.SelectSingleNode('renderNodeProperties/li/nodeClass').InnerText -ne 'AnimalCosmeticGenes.PawnRenderNode_CoatMarking') { 'Chest patch render node class changed' }
    if ($null -ne $trait.SelectSingleNode('stages')) { 'Chest patch has a stage (hidden)' }
    $m = $mk.SelectSingleNode("//AnimalCosmeticGenes.GeneTraitMapDef[defName='ACG_MarkingGenes']/mappings/li[gene='ACG_ChestPatch']")
    if ($null -eq $m -or $m.trait -ne 'AnimalTrait_ChestPatch') { 'ACG_MarkingGenes does not map the chest patch gene' }
}
It 'Serum, bench and recipe are wired' {
    $s = Read-Xml 'Defs/Serum.xml'
    $serum = $s.SelectSingleNode("/Defs/ThingDef[defName='ACG_AnimalTraitSerum']")
    if ($null -eq $serum) { 'ACG_AnimalTraitSerum missing' }
    elseif ($serum.thingClass -ne 'AnimalCosmeticGenes.AnimalTraitSerum') { 'Serum thingClass changed' }
    elseif ($null -ne $serum.SelectSingleNode('stackLimit')) { 'Serum has a stack limit set (serums of different genes must not merge)' }
    $r = $s.SelectSingleNode("/Defs/RecipeDef[defName='ACG_MakeAnimalTraitSerum']")
    if ($null -eq $r) { 'Recipe ACG_MakeAnimalTraitSerum missing' }
    else {
        if ($r.workerClass -ne 'AnimalCosmeticGenes.RecipeWorker_MakeAnimalTraitSerum') { 'Recipe worker changed' }
        foreach ($f in $r.SelectNodes('ingredients/li/filter/specialFiltersToDisallow/li'), $r.SelectNodes('fixedIngredientFilter/specialFiltersToDisallow/li')) {
            if (@($f | ForEach-Object InnerText) -notcontains 'ACG_UnmappedGenepack') { 'Recipe filter lets an unmapped genepack through' }
        }
    }
    if ($null -eq $s.SelectSingleNode("/Defs/SpecialThingFilterDef[defName='ACG_UnmappedGenepack']")) { 'ACG_UnmappedGenepack filter missing' }
    $b = Read-Xml 'Defs/Workbench.xml'
    $bench = $b.SelectSingleNode("/Defs/ThingDef[defName='ACG_SerumBench']")
    if ($null -eq $bench) { 'ACG_SerumBench missing' }
    else {
        if (@($bench.recipes.li) -notcontains 'ACG_MakeAnimalTraitSerum') { 'Bench does not list the serum recipe' }
        if (@($bench.researchPrerequisites.li) -notcontains 'Xenogermination') { 'Bench is not gated by Xenogermination' }
    }
    $g = $b.SelectSingleNode("/Defs/WorkGiverDef[defName='ACG_DoBillsSerumBench']")
    if ($null -eq $g -or @($g.fixedBillGiverDefs.li) -notcontains 'ACG_SerumBench') { 'No work giver gives the bench bills to a colonist' }
    $j = (Read-Xml 'Defs/Jobs_ApplySerum.xml').SelectSingleNode("/Defs/JobDef[defName='ACG_ApplyAnimalTraitSerum']")
    if ($null -eq $j -or $j.driverClass -ne 'AnimalCosmeticGenes.JobDriver_ApplyAnimalTraitSerum') { 'Apply serum job missing or wrong driver' }
}
It 'About identity and dependencies are intact' {
    $m = (Read-Xml 'About/About.xml').ModMetaData
    if ($m.packageId -cne 'nelim.animalcosmeticgenes') { 'Package identity changed' }
    if ($m.supportedVersions.li -notcontains '1.6') { 'Missing 1.6 support' }
    if ($m.url -notmatch '^https://github.com/[^/]+/[^/]+$') { 'Missing GitHub repository URL' }
    elseif (-not $m.description.Contains($m.url)) { 'Repository URL missing from description' }
    $deps = @($m.modDependencies.li | ForEach-Object packageId)
    foreach ($d in 'luved.animaltraits', 'Ludeon.RimWorld.Biotech') {
        if ($deps -notcontains $d) { "Dependency $d not declared" }
        if (@($m.loadAfter.li) -notcontains $d) { "$d missing from loadAfter" }
    }
    if (@($m.loadAfter.li) -notcontains 'Ludeon.RimWorld') { 'Core missing from loadAfter' }
}
It 'Exactly one assembly ships' {
    $dlls = @(Get-ChildItem -LiteralPath (Join-Path $ModPath 'Assemblies') -Filter *.dll -File)
    if ($dlls.Count -ne 1 -or $dlls[0].Name -ne 'AnimalCosmeticGenes.dll') { 'Expected only Assemblies/AnimalCosmeticGenes.dll' }
}

if ($script:findings.Count) { $script:findings | ForEach-Object { Write-Output $_ }; exit 1 }
Write-Output 'Rule-OwnValues: all rules pass'
