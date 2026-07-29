import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.LineageBias
import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.TranscriptionalRegulation
import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.EpigeneticLandscape

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure CellFateDecisionPackage (L : LineageBiasPackage) (R : TranscriptionalRegulationPackage) (E : EpigeneticLandscapePackage) where
  decision : String
  deterministic : Prop
  plasticity : Prop

structure CellFateDecisionEvidence {L : LineageBiasPackage} {R : TranscriptionalRegulationPackage} {E : EpigeneticLandscapePackage} (D : CellFateDecisionPackage L R E) where
  deterministicClosed : D.deterministic
  plasticityClosed : D.plasticity

def CellFateDecisionClosed {L : LineageBiasPackage} {R : TranscriptionalRegulationPackage} {E : EpigeneticLandscapePackage} (D : CellFateDecisionPackage L R E) : Prop :=
  D.deterministic ∧ D.plasticity

theorem cell_fate_decision_closed_from_evidence {L : LineageBiasPackage} {R : TranscriptionalRegulationPackage} {E : EpigeneticLandscapePackage} (D : CellFateDecisionPackage L R E) (Ev : CellFateDecisionEvidence D) :
    CellFateDecisionClosed D := by
  exact And.intro Ev.deterministicClosed Ev.plasticityClosed

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse