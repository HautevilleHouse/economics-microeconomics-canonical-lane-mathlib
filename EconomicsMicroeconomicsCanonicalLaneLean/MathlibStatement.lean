import EconomicsMicroeconomicsCanonicalLaneLean.FinalTheorem
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace EconomicsMicroeconomicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation :=
  { sourceKey := sourceRepository,
    theoremObject := sourceDescription,
    commonCoreImported := true,
    theoremSpecificDefinitionsNative := true,
    theoremSpecificBridgeNative := true,
    theoremSpecificAdmittedClosureNative := true,
    unrestrictedClassicalClosureNative := false,
    carriedGap := "Arrow-Debreu equilibrium closure over admitted class; unrestricted classical closure remains carried"
  }

def theoremSpecificEndgamePilotClosed : Prop :=
  ∀ A : AdmissibleClass, ConstrainedArrowDebreuClosure A

theorem theorem_specific_endgame_pilot_checked : theoremSpecificEndgamePilotClosed :=
  λ A => constrained_arrow_debreu_endgame A

end EconomicsMicroeconomicsCanonicalLaneLean
end HautevilleHouse