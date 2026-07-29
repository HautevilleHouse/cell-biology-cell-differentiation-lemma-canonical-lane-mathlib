import HautevilleHouse.CellBiologyCellDifferentiationLemmaCanonicalLaneLean.SignalingPathway

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

structure GeneExpressionNetworkPackage {S : SignalingPathwayPackage} where
  transcriptionalRegulators : Prop
  targetGeneActivation : Prop
  feedbackLoops : Prop
  networkStability : Prop

structure GeneExpressionNetworkEvidence {S : SignalingPathwayPackage}
    (G : GeneExpressionNetworkPackage S) where
  transcriptionalRegulatorsClosed : G.transcriptionalRegulators
  targetGeneActivationClosed : G.targetGeneActivation
  feedbackLoopsClosed : G.feedbackLoops
  networkStabilityClosed : G.networkStability

def GeneExpressionNetworkClosed {S : SignalingPathwayPackage}
    (G : GeneExpressionNetworkPackage S) : Prop :=
  G.transcriptionalRegulators ∧ G.targetGeneActivation ∧ G.feedbackLoops ∧ G.networkStability

theorem gene_expression_network_closed_from_evidence {S : SignalingPathwayPackage}
    (G : GeneExpressionNetworkPackage S) (E : GeneExpressionNetworkEvidence G) :
    GeneExpressionNetworkClosed G :=
  And.intro E.transcriptionalRegulatorsClosed
    (And.intro E.targetGeneActivationClosed
      (And.intro E.feedbackLoopsClosed E.networkStabilityClosed))

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse
