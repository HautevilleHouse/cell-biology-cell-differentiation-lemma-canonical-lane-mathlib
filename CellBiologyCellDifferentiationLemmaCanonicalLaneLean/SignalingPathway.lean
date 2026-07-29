import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure SignalingPathwayPackage where
  ligandReceptorBinding : Prop
  signalCascade : Prop
  transcriptionFactorActivation : Prop
  downstreamGeneExpression : Prop

structure SignalingPathwayEvidence (S : SignalingPathwayPackage) where
  ligandReceptorBindingClosed : S.ligandReceptorBinding
  signalCascadeClosed : S.signalCascade
  transcriptionFactorActivationClosed : S.transcriptionFactorActivation
  downstreamGeneExpressionClosed : S.downstreamGeneExpression

def SignalingPathwayClosed (S : SignalingPathwayPackage) : Prop :=
  S.ligandReceptorBinding ∧ S.signalCascade ∧ S.transcriptionFactorActivation ∧ S.downstreamGeneExpression

theorem signaling_pathway_closed_from_evidence (S : SignalingPathwayPackage) (E : SignalingPathwayEvidence S) :
    SignalingPathwayClosed S :=
  And.intro E.ligandReceptorBindingClosed
    (And.intro E.signalCascadeClosed
      (And.intro E.transcriptionFactorActivationClosed E.downstreamGeneExpressionClosed))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse
