import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.DifferentiationCore

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure TranscriptionalRegulationPackage where
  network : TranscriptionFactorNetwork
  cellState : CellState
  targetGenes : List String
  bindingAffinities : List Float

structure TranscriptionalRegulationEvidence (R : TranscriptionalRegulationPackage) where
  networkCoherent : R.network.feedbackLoops
  allAffinitiesPositive : ∀ a ∈ R.bindingAffinities, a > 0

def TranscriptionalRegulationClosed (R : TranscriptionalRegulationPackage) : Prop :=
  R.network.feedbackLoops ∧ ∀ a ∈ R.bindingAffinities, a > 0

theorem transcriptional_regulation_closed_from_evidence (R : TranscriptionalRegulationPackage) (E : TranscriptionalRegulationEvidence R) :
    TranscriptionalRegulationClosed R := by
  exact And.intro E.networkCoherent E.allAffinitiesPositive

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse