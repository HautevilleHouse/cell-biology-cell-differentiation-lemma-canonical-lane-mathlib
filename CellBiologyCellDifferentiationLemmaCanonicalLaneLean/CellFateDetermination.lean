import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure CellFatePackage where
  multipotencyState : Prop
  lineageCommitment : Prop
  terminalDifferentiation : Prop
  phenotypicStability : Prop
  dedifferentiationPotential : Prop

structure CellFateEvidence (F : CellFatePackage) where
  multipotencyStateClosed : F.multipotencyState
  lineageCommitmentClosed : F.lineageCommitment
  terminalDifferentiationClosed : F.terminalDifferentiation
  phenotypicStabilityClosed : F.phenotypicStability
  dedifferentiationPotentialClosed : F.dedifferentiationPotential

def CellFateClosed (F : CellFatePackage) : Prop :=
  F.multipotencyState ∧ F.lineageCommitment ∧ F.terminalDifferentiation ∧ F.phenotypicStability ∧ F.dedifferentiationPotential

theorem cell_fate_closed_from_evidence (F : CellFatePackage) (E : CellFateEvidence F) : CellFateClosed F := by
  exact And.intro E.multipotencyStateClosed (And.intro E.lineageCommitmentClosed (And.intro E.terminalDifferentiationClosed (And.intro E.phenotypicStabilityClosed E.dedifferentiationPotentialClosed)))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse