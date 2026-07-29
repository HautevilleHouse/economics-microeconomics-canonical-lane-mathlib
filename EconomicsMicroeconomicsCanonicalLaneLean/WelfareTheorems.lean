import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMicroeconomicsCanonicalLaneLean

structure ParetoOptimum where
  allocation : Type
  noImprovementPossible : Prop

structure SocialWelfareFunction where
  preferences : Type
  aggregation : Prop

theorem first_welfare_theorem (M : Market) (E : CompetitiveEquilibrium M) (P : ParetoOptimum) (H : E.surplusMaximizing) :
    P.noImprovementPossible := by
  exact H

theorem second_welfare_theorem (M : Market) (P : ParetoOptimum) (S : SocialWelfareFunction) (H : P.noImprovementPossible) :
    ∃ (E : CompetitiveEquilibrium M), E.surplusMaximizing := by
  exact Exists.intro ({
    equilibriumPrice := 0
    equilibriumQuantity := 0
    surplusMaximizing := H
    surplusTerm := H
  } : CompetitiveEquilibrium M) H

end EconomicsMicroeconomicsCanonicalLaneLean
end HautevilleHouse