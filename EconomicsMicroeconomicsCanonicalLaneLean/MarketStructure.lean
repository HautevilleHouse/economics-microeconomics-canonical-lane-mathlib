import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMicroeconomicsCanonicalLaneLean

structure Market where
  buyers : Nat
  sellers : Nat
  homogeneousGood : Bool
  priceTakingBehavior : Prop

structure CompetitiveEquilibrium (M : Market) where
  equilibriumPrice : ℝ
  equilibriumQuantity : ℝ
  surplusMaximizing : Prop
  surplusTerm : surplusMaximizing

def MarketClosed (M : Market) : Prop :=
  M.priceTakingBehavior ∧ ∃ (E : CompetitiveEquilibrium M), E.surplusMaximizing

theorem market_closed_from_evidence (M : Market) (E : CompetitiveEquilibrium M) (Hsurplus : E.surplusMaximizing) :
    MarketClosed M := by
  refine And.intro M.priceTakingBehavior ?_
  exact Exists.intro E Hsurplus

end EconomicsMicroeconomicsCanonicalLaneLean
end HautevilleHouse