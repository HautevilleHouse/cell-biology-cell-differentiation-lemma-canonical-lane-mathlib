import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure SignalTransductionPathwayPackage (A : AdmissibleClass) where
  ligandReceptorBinding : Prop
  kinaseCascadeActivation : Prop
  transcriptionFactorModulation : Prop
  geneExpressionChange : Prop
  differentiationOutcome : Prop

structure SignalTransductionPathwayEvidence {A : AdmissibleClass}
    (P : SignalTransductionPathwayPackage A) where
  ligandReceptorBindingClosed : P.ligandReceptorBinding
  kinaseCascadeActivationClosed : P.kinaseCascadeActivation
  transcriptionFactorModulationClosed : P.transcriptionFactorModulation
  geneExpressionChangeClosed : P.geneExpressionChange
  differentiationOutcomeClosed : P.differentiationOutcome

def SignalTransductionPathwayClosed {A : AdmissibleClass}
    (P : SignalTransductionPathwayPackage A) : Prop :=
  P.ligandReceptorBinding ∧ P.kinaseCascadeActivation ∧
  P.transcriptionFactorModulation ∧ P.geneExpressionChange ∧
  P.differentiationOutcome

theorem signal_transduction_pathway_closed_from_evidence
    {A : AdmissibleClass} (P : SignalTransductionPathwayPackage A)
    (E : SignalTransductionPathwayEvidence P) : SignalTransductionPathwayClosed P := by
  exact And.intro E.ligandReceptorBindingClosed
    (And.intro E.kinaseCascadeActivationClosed
      (And.intro E.transcriptionFactorModulationClosed
        (And.intro E.geneExpressionChangeClosed E.differentiationOutcomeClosed)))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse