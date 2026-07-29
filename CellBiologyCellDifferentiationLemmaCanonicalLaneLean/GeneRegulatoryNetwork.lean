import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellDifferentiationLemmaCanonicalLaneLean

inductive CellType where
  | stemCell
  | progenitorA
  | progenitorB
  | differentiatedA
  | differentiatedB
deriving Repr, DecidableEq

structure GeneRegulatoryNetworkPackage where
  cellTypeMarker : CellType
  geneExpressionProfile : Prop
  regulatoryModuleDynamics : Prop
  networkEvidence : geneExpressionProfile ∧ regulatoryModuleDynamics

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.geneExpressionProfile ∧ G.regulatoryModuleDynamics

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetworkPackage) :
    GeneRegulatoryNetworkClosed G := by
  exact G.networkEvidence

end CellBiologyCellDifferentiationLemmaCanonicalLaneLean
end HautevilleHouse