import CellBiologyCellDifferentiationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure DifferentiationPathway where
  source : AdmissibleClass
  target : AdmissibleClass
  transcriptionFactors : List String
  signalingPathways : List String
  epigeneticChanges : List String
  intermediateStates : List CellState

def pathwayClosed (P : DifferentiationPathway) : Prop :=
  bridgeClosed P.source ∧ gateClosed P.source ∧ bridgeClosed P.target ∧ gateClosed P.target

theorem pathway_closed_iff_final (P : DifferentiationPathway) :
  pathwayClosed P ↔ (bridgeClosed P.source ∧ gateClosed P.source ∧ bridgeClosed P.target ∧ gateClosed P.target) :=
  by
    constructor
    · exact id
    · exact id

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse