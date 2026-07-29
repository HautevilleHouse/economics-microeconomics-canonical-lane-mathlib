import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMicroeconomicsCanonicalLaneLean

structure UtilityRepresentationPackage where
  preferenceRelation : Type u
  utilityFunction : Type v
  continuity : Prop
  monotonicity : Prop
  convexity : Prop
  representationExists : Prop
  uniquenessUpToMonotoneTransformation : Prop

structure UtilityRepresentationEvidence (U : UtilityRepresentationPackage) where
  continuityClosed : U.continuity
  monotonicityClosed : U.monotonicity
  convexityClosed : U.convexity
  representationExistsClosed : U.representationExists
  uniquenessUpToMonotoneTransformationClosed : U.uniquenessUpToMonotoneTransformation

def UtilityRepresentationClosed (U : UtilityRepresentationPackage) : Prop :=
  U.continuity ∧ U.monotonicity ∧ U.convexity ∧ U.representationExists ∧ U.uniquenessUpToMonotoneTransformation

theorem utility_representation_closed_from_evidence (U : UtilityRepresentationPackage)
    (E : UtilityRepresentationEvidence U) : UtilityRepresentationClosed U := by
  exact And.intro E.continuityClosed (And.intro E.monotonicityClosed
    (And.intro E.convexityClosed (And.intro E.representationExistsClosed E.uniquenessUpToMonotoneTransformationClosed)))

end EconomicsMicroeconomicsCanonicalLaneLean
end HautevilleHouse