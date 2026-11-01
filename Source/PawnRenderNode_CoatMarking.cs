using UnityEngine;
using Verse;

namespace AnimalCosmeticGenes
{
    /// <summary>
    /// A coat marking (a white chest patch, later spots or a mask) drawn over the animal's body. The art is one texture set
    /// per animal def, named <c>texPath + "_" + defName</c> plus the facing suffix, drawn on the body's own canvas at the
    /// body's own size, so a marking is shaped on that animal's sprite. An animal def with no such art draws nothing.
    /// </summary>
    public class PawnRenderNode_CoatMarking : PawnRenderNode
    {
        public PawnRenderNode_CoatMarking(Pawn pawn, PawnRenderNodeProperties props, PawnRenderTree tree)
            : base(pawn, props, tree)
        {
        }

        public override GraphicMeshSet MeshSetFor(Pawn pawn)
        {
            Vector2 size = pawn.ageTracker?.CurKindLifeStage?.bodyGraphicData?.drawSize ?? Vector2.one;
            return MeshPool.GetMeshSetForSize(size.x, size.y);
        }

        protected override string TexPathFor(Pawn pawn)
        {
            string path = props.texPath + "_" + pawn.def.defName;
            return ContentFinder<Texture2D>.Get(path + "_south", false) != null ? path : null;
        }
    }
}
