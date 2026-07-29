import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure SignalTransductionPackage where
  receptorActivation : Prop
  kinaseCascade : Prop
  transcriptionFactorResponse : Prop
  geneExpressionChange : Prop

structure SignalTransductionEvidence (S : SignalTransductionPackage) where
  receptorActivationClosed : S.receptorActivation
  kinaseCascadeClosed : S.kinaseCascade
  transcriptionFactorResponseClosed : S.transcriptionFactorResponse
  geneExpressionChangeClosed : S.geneExpressionChange

def SignalTransductionClosed (S : SignalTransductionPackage) : Prop :=
  S.receptorActivation ∧ S.kinaseCascade ∧ S.transcriptionFactorResponse ∧ S.geneExpressionChange

theorem signal_transduction_closed_from_evidence (S : SignalTransductionPackage) (E : SignalTransductionEvidence S) :
    SignalTransductionClosed S := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.kinaseCascadeClosed
      (And.intro E.transcriptionFactorResponseClosed E.geneExpressionChangeClosed))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse