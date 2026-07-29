import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure EpigeneticRegulationPackage (A : AdmissibleClass) where
  dnaMethylationPatterns : Prop
  histoneModifications : Prop
  chromatinRemodeling : Prop
  geneSilencingOrActivation : Prop
  differentiationMemory : Prop

structure EpigeneticRegulationEvidence {A : AdmissibleClass}
    (E : EpigeneticRegulationPackage A) where
  dnaMethylationPatternsClosed : E.dnaMethylationPatterns
  histoneModificationsClosed : E.histoneModifications
  chromatinRemodelingClosed : E.chromatinRemodeling
  geneSilencingOrActivationClosed : E.geneSilencingOrActivation
  differentiationMemoryClosed : E.differentiationMemory

def EpigeneticRegulationClosed {A : AdmissibleClass}
    (E : EpigeneticRegulationPackage A) : Prop :=
  E.dnaMethylationPatterns ∧ E.histoneModifications ∧
  E.chromatinRemodeling ∧ E.geneSilencingOrActivation ∧
  E.differentiationMemory

theorem epigenetic_regulation_closed_from_evidence
    {A : AdmissibleClass} (E : EpigeneticRegulationPackage A)
    (Ev : EpigeneticRegulationEvidence E) : EpigeneticRegulationClosed E := by
  exact And.intro Ev.dnaMethylationPatternsClosed
    (And.intro Ev.histoneModificationsClosed
      (And.intro Ev.chromatinRemodelingClosed
        (And.intro Ev.geneSilencingOrActivationClosed Ev.differentiationMemoryClosed)))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse