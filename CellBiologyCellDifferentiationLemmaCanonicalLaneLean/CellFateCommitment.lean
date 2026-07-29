import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure CellFateCommitmentPackage where
  lineageSpecification : Prop
  commitmentIrreversibility : Prop
  plasticityWindow : Prop
  terminalDifferentiation : Prop

structure CellFateCommitmentEvidence (C : CellFateCommitmentPackage) where
  lineageSpecificationClosed : C.lineageSpecification
  commitmentIrreversibilityClosed : C.commitmentIrreversibility
  plasticityWindowClosed : C.plasticityWindow
  terminalDifferentiationClosed : C.terminalDifferentiation

def CellFateCommitmentClosed (C : CellFateCommitmentPackage) : Prop :=
  C.lineageSpecification ∧ C.commitmentIrreversibility ∧ C.plasticityWindow ∧ C.terminalDifferentiation

theorem cell_fate_commitment_closed_from_evidence (C : CellFateCommitmentPackage) (E : CellFateCommitmentEvidence C) :
    CellFateCommitmentClosed C := by
  exact And.intro E.lineageSpecificationClosed
    (And.intro E.commitmentIrreversibilityClosed (And.intro E.plasticityWindowClosed E.terminalDifferentiationClosed))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse