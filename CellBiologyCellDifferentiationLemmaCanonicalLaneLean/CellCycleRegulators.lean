import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure CellCycleRegulatorsPackage where
  cyclinDependentKinases : Prop
  cyclinConcentration : Prop
  checkpointControl : Prop
  growthFactorSignaling : Prop

structure CellCycleRegulatorsEvidence (C : CellCycleRegulatorsPackage) where
  cyclinDependentKinasesClosed : C.cyclinDependentKinases
  cyclinConcentrationClosed : C.cyclinConcentration
  checkpointControlClosed : C.checkpointControl
  growthFactorSignalingClosed : C.growthFactorSignaling

def CellCycleRegulatorsClosed (C : CellCycleRegulatorsPackage) : Prop :=
  C.cyclinDependentKinases ∧ C.cyclinConcentration ∧ C.checkpointControl ∧ C.growthFactorSignaling

theorem cell_cycle_regulators_closed_from_evidence (C : CellCycleRegulatorsPackage) (E : CellCycleRegulatorsEvidence C) :
    CellCycleRegulatorsClosed C := by
  exact And.intro E.cyclinDependentKinasesClosed
    (And.intro E.cyclinConcentrationClosed
      (And.intro E.checkpointControlClosed E.growthFactorSignalingClosed))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse