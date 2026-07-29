import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure StemCellNichePackage where
  microenvironment : Prop
  cellCellInteractions : Prop
  extracellularMatrix : Prop
  solubleFactors : Prop

structure StemCellNicheEvidence (N : StemCellNichePackage) where
  microenvironmentClosed : N.microenvironment
  cellCellInteractionsClosed : N.cellCellInteractions
  extracellularMatrixClosed : N.extracellularMatrix
  solubleFactorsClosed : N.solubleFactors

def StemCellNicheClosed (N : StemCellNichePackage) : Prop :=
  N.microenvironment ∧ N.cellCellInteractions ∧ N.extracellularMatrix ∧ N.solubleFactors

theorem stem_cell_niche_closed_from_evidence (N : StemCellNichePackage) (E : StemCellNicheEvidence N) :
    StemCellNicheClosed N := by
  exact And.intro E.microenvironmentClosed
    (And.intro E.cellCellInteractionsClosed
      (And.intro E.extracellularMatrixClosed E.solubleFactorsClosed))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse