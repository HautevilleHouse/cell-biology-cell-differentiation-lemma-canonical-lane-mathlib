import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure StemCellAdmittedObject where
  cellType : Type
  differentiationPathway : Prop
  committedState : Prop
  pluripotentPotential : Prop
  conclusion : committedState ∨ pluripotentPotential

structure AdmissibleClass where
  object : StemCellAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (bridgeClosed A) ∧ (gateClosed A)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.committedState ∨ A.object.pluripotentPotential

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  match A.object.conclusion with
  | Or.inl h => Or.inl h
  | Or.inr h => Or.inr h

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse