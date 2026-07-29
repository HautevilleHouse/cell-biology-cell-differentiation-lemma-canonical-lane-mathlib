import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure CellAdmittedObject where
  cellType : Type u
  differentiationPotential : Prop
  lineageCommitment : Prop
  conclusion : differentiationPotential

def CellWitnessClosed (O : CellAdmittedObject) : Prop :=
  O.differentiationPotential

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse