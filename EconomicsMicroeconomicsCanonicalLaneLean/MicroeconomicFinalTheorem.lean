import canonicalLaneMathlib.AdmissibleClass
import EconomicsMicroeconomicsCanonicalLaneLean.ArrowDebreuEquilibrium
import EconomicsMicroeconomicsCanonicalLaneLean.UtilityTheory
import EconomicsMicroeconomicsCanonicalLaneLean.GrowthModel
import EconomicsMicroeconomicsCanonicalLaneLean.AssetPricing
import EconomicsMicroeconomicsCanonicalLaneLean.MarketStructure

namespace HautevilleHouse
namespace EconomicsMicroeconomicsCanonicalLaneLean

def ConstrainedMicroeconomicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_microeconomic_endgame (A : AdmissibleClass) :
    ConstrainedMicroeconomicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsMicroeconomicsCanonicalLaneLean
end HautevilleHouse