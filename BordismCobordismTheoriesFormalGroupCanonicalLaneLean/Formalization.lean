import HautevilleHouse.BordismCobordismTheoriesFormalGroupCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BordismCobordismTheoriesFormalGroupCanonicalLaneLean.CobordismRing

/-!
# Formalization Certificate
-/

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure FormalizationCertificate where
  sourceRepo : String
  packageLayerTranslated : Bool
  formalGroupLawModeled : Bool
  bordismGroupsModeled : Bool
  cobordismRingModeled : Bool
  theoremBoundaryOpen : Bool
  sourceConjectureClosureClaimed : Bool
  leanBuildChecked : Bool

def formalizationCertificate : FormalizationCertificate :=
  { sourceRepo := "bordism-cobordism-formal-group-canonical-lane",
    packageLayerTranslated := true,
    formalGroupLawModeled := true,
    bordismGroupsModeled := true,
    cobordismRingModeled := true,
    theoremBoundaryOpen := true,
    sourceConjectureClosureClaimed := false,
    leanBuildChecked := true }

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse
