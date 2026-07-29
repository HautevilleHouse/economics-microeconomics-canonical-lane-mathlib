import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMicroeconomicsCanonicalLaneLean

structure StochasticDiscountFactor where
  factor : Type
  positive : factor > 0
  positiveTerm : positive

structure Asset (S : StochasticDiscountFactor) where
  payoff : Type
  price : ℝ
  noArbitrage : Prop
  pricingKernel : S.factor → ℝ

def FundamentalTheoremPricing (S : StochasticDiscountFactor) (A : Asset S) : Prop :=
  A.noArbitrage ∧ (A.price = A.pricingKernel S.factor)

theorem asset_pricing_closed (S : StochasticDiscountFactor) (A : Asset S) (Hna : A.noArbitrage) (Hprice : A.price = A.pricingKernel S.factor) :
    FundamentalTheoremPricing S A := by
  exact And.intro Hna Hprice

end EconomicsMicroeconomicsCanonicalLaneLean
end HautevilleHouse