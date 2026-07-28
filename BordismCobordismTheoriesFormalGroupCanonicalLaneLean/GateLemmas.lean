import canonicalLaneMathlib.AdmissibleClass
import BordismCobordismTheoriesFormalGroupCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse