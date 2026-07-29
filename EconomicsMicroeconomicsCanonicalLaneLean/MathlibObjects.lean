import EconomicsMicroeconomicsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EconomicsMicroeconomicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MarketSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MarketEquilibrium where
  space : MarketSpace
  endowmentsAllocated : Prop
  preferencesOptimized : Prop
  marketClears : marketClears

def MarketEquilibriumReached (M : MarketEquilibrium) : Prop :=
  M.marketClears

end EconomicsMicroeconomicsCanonicalLaneLean
end HautevilleHouse