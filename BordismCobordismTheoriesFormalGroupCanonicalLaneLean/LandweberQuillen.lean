import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BordismCobordismTheoriesFormalGroupCanonicalLaneLean.FormalGroupLaw

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure LandweberExactnessPackage (F : FormalGroupLaw (ℤ → ℤ)) where
  exactnessCondition : Prop
  landweberTheorem : Prop

structure LandweberExactnessEvidence (L : LandweberExactnessPackage (FormalGroupLaw ℤ)) where
  exactnessConditionClosed : L.exactnessCondition
  landweberTheoremClosed : L.landweberTheorem

def LandweberExactnessClosed (L : LandweberExactnessPackage (FormalGroupLaw ℤ)) : Prop :=
  L.exactnessCondition ∧ L.landweberTheorem

theorem landweber_exactness_closed_from_evidence
    (L : LandweberExactnessPackage (FormalGroupLaw ℤ))
    (E : LandweberExactnessEvidence L) : LandweberExactnessClosed L :=
  And.intro E.exactnessConditionClosed E.landweberTheoremClosed

structure QuillenTheoremPackage (R : Type u) where
  complexCobordismRing : Ring R
  lazardRing : Ring R
  isomorphism : R ≃+* lazardRing
  quillenProved : Prop

structure QuillenTheoremEvidence (Q : QuillenTheoremPackage ℤ) where
  quillenProvedClosed : Q.quillenProved

def QuillenTheoremClosed (Q : QuillenTheoremPackage ℤ) : Prop :=
  Q.quillenProved

theorem quillen_theorem_closed_from_evidence (Q : QuillenTheoremPackage ℤ)
    (E : QuillenTheoremEvidence Q) : QuillenTheoremClosed Q :=
  E.quillenProvedClosed

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse