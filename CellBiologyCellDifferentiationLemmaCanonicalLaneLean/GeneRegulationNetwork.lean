import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure GeneRegulationPackage where
  transcriptionFactorActivity : Prop
  dnaBindingAffinity : Prop
  rnaPolymeraseRecruitment : Prop
  chromatinRemodelingState : Prop
  geneExpressionProfile : Prop

structure GeneRegulationEvidence (G : GeneRegulationPackage) where
  transcriptionFactorActivityClosed : G.transcriptionFactorActivity
  dnaBindingAffinityClosed : G.dnaBindingAffinity
  rnaPolymeraseRecruitmentClosed : G.rnaPolymeraseRecruitment
  chromatinRemodelingStateClosed : G.chromatinRemodelingState
  geneExpressionProfileClosed : G.geneExpressionProfile

def GeneRegulationClosed (G : GeneRegulationPackage) : Prop :=
  G.transcriptionFactorActivity ∧ G.dnaBindingAffinity ∧ G.rnaPolymeraseRecruitment ∧ G.chromatinRemodelingState ∧ G.geneExpressionProfile

theorem gene_regulation_closed_from_evidence (G : GeneRegulationPackage) (E : GeneRegulationEvidence G) : GeneRegulationClosed G := by
  exact And.intro E.transcriptionFactorActivityClosed (And.intro E.dnaBindingAffinityClosed (And.intro E.rnaPolymeraseRecruitmentClosed (And.intro E.chromatinRemodelingStateClosed E.geneExpressionProfileClosed)))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse