import canonicalLaneMathlib.AdmissibleClass
import BordismCobordismTheoriesFormalGroupCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure AdmissibleClass where
  object : BordismCobordismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BordismCobordismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse