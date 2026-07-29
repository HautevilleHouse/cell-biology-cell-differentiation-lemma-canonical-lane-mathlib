import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure SignalingPathwayCrossTalkPackage where
  notchSignaling : Prop
  wntSignaling : Prop
  hedgehogSignaling : Prop
  crossTalkMechanisms : Prop

structure SignalingPathwayCrossTalkEvidence (S : SignalingPathwayCrossTalkPackage) where
  notchSignalingClosed : S.notchSignaling
  wntSignalingClosed : S.wntSignaling
  hedgehogSignalingClosed : S.hedgehogSignaling
  crossTalkMechanismsClosed : S.crossTalkMechanisms

def SignalingPathwayCrossTalkClosed (S : SignalingPathwayCrossTalkPackage) : Prop :=
  S.notchSignaling ∧ S.wntSignaling ∧ S.hedgehogSignaling ∧ S.crossTalkMechanisms

theorem signaling_pathway_cross_talk_closed_from_evidence (S : SignalingPathwayCrossTalkPackage) (E : SignalingPathwayCrossTalkEvidence S) :
    SignalingPathwayCrossTalkClosed S := by
  exact And.intro E.notchSignalingClosed
    (And.intro E.wntSignalingClosed (And.intro E.hedgehogSignalingClosed E.crossTalkMechanismsClosed))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse