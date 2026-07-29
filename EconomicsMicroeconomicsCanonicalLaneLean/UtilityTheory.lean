import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMicroeconomicsCanonicalLaneLean

structure UtilityFunction (C : Type) where
  pref : C → C → Prop
  complete : ∀ x y : C, pref x y ∨ pref y x
  transitive : ∀ x y z : C, pref x y → pref y z → pref x z
  continuous : Prop
  strictlyMonotonic : Prop
  rational : Prop
  rationalTerm : rational

structure UtilityRepresentation (C : Type) (U : UtilityFunction C) where
  u : C → ℝ
  rep : ∀ x y : C, U.pref x y ↔ u x ≥ u y
  continuous : Prop

structure UtilityEvidence (C : Type) (U : UtilityFunction C) (R : UtilityRepresentation C U) where
  repClosed : ∀ x y : C, U.pref x y ↔ R.u x ≥ R.u y
  continuousClosed : R.continuous

def UtilityClosed (C : Type) (U : UtilityFunction C) : Prop :=
  U.rational ∧ ∃ (R : UtilityRepresentation C U), ∀ x y : C, U.pref x y ↔ R.u x ≥ R.u y

theorem utility_closed_from_evidence (C : Type) (U : UtilityFunction C) (R : UtilityRepresentation C U) (E : UtilityEvidence C U R) :
    UtilityClosed C U := by
  refine And.intro U.rationalTerm ?_
  refine Exists.intro R ?_
  exact E.repClosed

end EconomicsMicroeconomicsCanonicalLaneLean
end HautevilleHouse