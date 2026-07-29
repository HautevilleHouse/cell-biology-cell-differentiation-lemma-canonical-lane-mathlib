import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure StemCellRegulatoryNetwork where
  transcriptionFactorNetwork : Prop
  feedbackLoops : Prop
  noiseResilience : Prop
  stateTransitions : Prop

structure StemCellRegulationEvidence (N : StemCellRegulatoryNetwork) where
  transcriptionFactorNetworkClosed : N.transcriptionFactorNetwork
  feedbackLoopsClosed : N.feedbackLoops
  noiseResilienceClosed : N.noiseResilience
  stateTransitionsClosed : N.stateTransitions

def StemCellRegulationClosed (N : StemCellRegulatoryNetwork) : Prop :=
  N.transcriptionFactorNetwork ∧ N.feedbackLoops ∧ N.noiseResilience ∧ N.stateTransitions

theorem stem_cell_regulation_closed_from_evidence (N : StemCellRegulatoryNetwork) (E : StemCellRegulationEvidence N) :
    StemCellRegulationClosed N := by
  exact And.intro E.transcriptionFactorNetworkClosed
    (And.intro E.feedbackLoopsClosed (And.intro E.noiseResilienceClosed E.stateTransitionsClosed))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse