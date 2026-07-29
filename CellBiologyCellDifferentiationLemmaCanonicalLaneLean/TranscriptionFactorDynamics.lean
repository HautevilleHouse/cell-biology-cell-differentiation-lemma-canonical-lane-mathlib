import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure TranscriptionFactorDynamicsPackage where
  regulatoryMotifs : Prop
  concentrationGradients : Prop
  sequentialActivation : Prop
  crossRepression : Prop

structure TranscriptionFactorDynamicsEvidence (P : TranscriptionFactorDynamicsPackage) where
  regulatoryMotifsClosed : P.regulatoryMotifs
  concentrationGradientsClosed : P.concentrationGradients
  sequentialActivationClosed : P.sequentialActivation
  crossRepressionClosed : P.crossRepression

def TranscriptionFactorDynamicsClosed (P : TranscriptionFactorDynamicsPackage) : Prop :=
  P.regulatoryMotifs ∧ P.concentrationGradients ∧ P.sequentialActivation ∧ P.crossRepression

theorem transcription_factor_dynamics_closed_from_evidence (P : TranscriptionFactorDynamicsPackage) (E : TranscriptionFactorDynamicsEvidence P) :
    TranscriptionFactorDynamicsClosed P := by
  exact And.intro E.regulatoryMotifsClosed
    (And.intro E.concentrationGradientsClosed (And.intro E.sequentialActivationClosed E.crossRepressionClosed))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse