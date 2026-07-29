import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure CellDifferentiationAdmittedObject where
  cellType : Type
  differentiationPathway : Prop
  markerExpression : Prop
  conclusion : markerExpression

def CellDifferentiationWitnessClosed (O : CellDifferentiationAdmittedObject) : Prop :=
  O.markerExpression

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse