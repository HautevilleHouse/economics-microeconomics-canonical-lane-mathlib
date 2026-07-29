import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMicroeconomicsCanonicalLaneLean

structure CommoditySpace where
  commodities : Nat
  prices : Type
  endowments : Type
  preferences : Type

structure ArrowDebreuEconomy (C : CommoditySpace) where
  agents : Nat
  utilityFunctions : List (Type → Prop)
  initialEndowments : Type
  productionSets : Type
  agentsPositive : agents > 0
  agentsTerm : agentsPositive

structure EquilibriumPrices (C : CommoditySpace) (E : ArrowDebreuEconomy C) where
  priceVector : Type
  allocation : Type
  marketClearing : Prop
  optimality : Prop

def ArrowDebreuEquilibrium (C : CommoditySpace) (E : ArrowDebreuEconomy C) : Prop :=
  ∃ (P : EquilibriumPrices C E), P.marketClearing ∧ P.optimality

theorem arrow_debreu_equilibrium_closed (C : CommoditySpace) (E : ArrowDebreuEconomy C) (P : EquilibriumPrices C E)
    (Hmarket : P.marketClearing) (Hopt : P.optimality) : ArrowDebreuEquilibrium C E := by
  exact Exists.intro P (And.intro Hmarket Hopt)

end EconomicsMicroeconomicsCanonicalLaneLean
end HautevilleHouse