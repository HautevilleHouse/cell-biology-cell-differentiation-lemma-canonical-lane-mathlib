import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure CellSignalingPackage where
  ligandConcentration : Prop
  receptorActivation : Prop
  cascadeTransduction : Prop
  transcriptionFactorInduction : Prop
  differentiationTriggered : Prop

structure CellSignalingEvidence (S : CellSignalingPackage) where
  ligandConcentrationClosed : S.ligandConcentration
  receptorActivationClosed : S.receptorActivation
  cascadeTransductionClosed : S.cascadeTransduction
  transcriptionFactorInductionClosed : S.transcriptionFactorInduction
  differentiationTriggeredClosed : S.differentiationTriggered

def CellSignalingClosed (S : CellSignalingPackage) : Prop :=
  S.ligandConcentration ∧ S.receptorActivation ∧ S.cascadeTransduction ∧ S.transcriptionFactorInduction ∧ S.differentiationTriggered

theorem cell_signaling_closed_from_evidence (S : CellSignalingPackage) (E : CellSignalingEvidence S) : CellSignalingClosed S := by
  exact And.intro E.ligandConcentrationClosed (And.intro E.receptorActivationClosed (And.intro E.cascadeTransductionClosed (And.intro E.transcriptionFactorInductionClosed E.differentiationTriggeredClosed)))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse