import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure StemCellAdmittedObject where
  lineage : Type
  potency : Prop
  nicheSignals : Prop
  differentiationCommited : Prop
  conclusion : differentiationCommited

def StemCellWitnessClosed (O : StemCellAdmittedObject) : Prop :=
  O.differentiationCommited

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse