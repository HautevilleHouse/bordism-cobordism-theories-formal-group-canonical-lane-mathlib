import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BordismCobordismTheoriesFormalGroupCanonicalLaneLean.BordismRing

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

def ConstrainedBordismCobordismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bordism_cobordism_endgame (A : AdmissibleClass) :
    ConstrainedBordismCobordismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse