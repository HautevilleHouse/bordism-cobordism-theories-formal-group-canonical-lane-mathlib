import canonicalLaneMathlib.AdmissibleClass
import BordismCobordismTheoriesFormalGroupCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BordismCobordismWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.quillenTheoremClosed

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse