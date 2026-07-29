import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.DifferentiationCore

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure LineageBiasPackage where
  cell : CellState
  lineagePotential : Type u
  biasWeight : Float
  externalSignals : List DifferentiationSignal

structure LineageBiasEvidence (L : LineageBiasPackage) where
  biasWeightPositive : L.biasWeight > 0
  biasWeightStable : L.biasWeight < 1

def LineageBiasClosed (L : LineageBiasPackage) : Prop :=
  L.biasWeight > 0 ∧ L.biasWeight < 1

theorem lineage_bias_closed_from_evidence (L : LineageBiasPackage) (E : LineageBiasEvidence L) :
    LineageBiasClosed L := by
  exact And.intro E.biasWeightPositive E.biasWeightStable

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse