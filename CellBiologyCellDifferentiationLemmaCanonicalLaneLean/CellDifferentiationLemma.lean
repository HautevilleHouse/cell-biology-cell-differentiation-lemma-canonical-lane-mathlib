import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.GeneRegulatoryNetwork
import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.SignalingPathway
import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.EpigeneticLandscape
import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.StemCellNiche
import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.TranscriptionalRegulation

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure CellDifferentiationLemma where
  geneNetwork : GeneRegulatoryNetwork
  signalingPathway : SignalingPathway
  epigeneticLandscape : EpigeneticLandscape
  stemCellNiche : StemCellNiche
  transcriptionalRegulation : TranscriptionalRegulation
  differentiationPathDetermined : Prop
  commitmentIrreversible : Prop
  plasticityBound : Prop

structure CellDifferentiationEvidence (L : CellDifferentiationLemma) where
  differentiationPathDeterminedClosed : L.differentiationPathDetermined
  commitmentIrreversibleClosed : L.commitmentIrreversible
  plasticityBoundClosed : L.plasticityBound

def CellDifferentiationLemmaClosed (L : CellDifferentiationLemma) : Prop :=
  L.differentiationPathDetermined ∧ L.commitmentIrreversible ∧ L.plasticityBound

theorem cell_differentiation_lemma_closed_from_evidence (L : CellDifferentiationLemma) (E : CellDifferentiationEvidence L) :
    CellDifferentiationLemmaClosed L := by
  exact And.intro E.differentiationPathDeterminedClosed (And.intro E.commitmentIrreversibleClosed E.plasticityBoundClosed)

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse