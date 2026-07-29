import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMicroeconomicsCanonicalLaneLean

structure ProductionFunction where
  capitalShare : ℝ
  laborShare : ℝ
  totalFactorProductivity : ℝ
  constantReturnsToScale : Prop
  crsTerm : constantReturnsToScale

structure RamseyModel where
  discountRate : ℝ
  intertemporalElasticity : ℝ
  depreciationRate : ℝ
  populationGrowth : ℝ
  technologicalProgress : ℝ
  parametersPositive : discountRate > 0 ∧ intertemporalElasticity > 0 ∧ depreciationRate > 0
  parametersTerm : parametersPositive

structure BalancedGrowthPath (R : RamseyModel) where
  capitalOutputRatio : ℝ
  savingsRate : ℝ
  interestRate : ℝ
  balancedConditions : Prop

def GrowthModelClosed (R : RamseyModel) : Prop :=
  R.parametersPositive ∧ ∃ (B : BalancedGrowthPath R), B.balancedConditions

theorem growth_model_closed_from_evidence (R : RamseyModel) (B : BalancedGrowthPath R) (Hbal : B.balancedConditions) :
    GrowthModelClosed R := by
  refine And.intro R.parametersTerm ?_
  exact Exists.intro B Hbal

end EconomicsMicroeconomicsCanonicalLaneLean
end HautevilleHouse