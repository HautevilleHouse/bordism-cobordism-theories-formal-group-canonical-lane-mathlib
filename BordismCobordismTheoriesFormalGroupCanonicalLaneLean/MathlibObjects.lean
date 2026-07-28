import BordismCobordismTheoriesFormalGroupCanonicalLaneLean.BordismCobordism
import BordismCobordismTheoriesFormalGroupCanonicalLaneLean.FormalGroupLaw
import BordismCobordismTheoriesFormalGroupCanonicalLaneLean.QuillenTheorem

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure BordismCobordismAdmittedObject where
  theory : BordismTheoryPackage
  theoryClosed : BordismTheoryClosed theory
  formalGroupLaw : FormalGroupLawPackage theory
  formalGroupLawClosed : FormalGroupLawClosed formalGroupLaw
  quillenTheorem : QuillenTheoremPackage theory formalGroupLaw
  quillenTheoremClosed : QuillenTheoremClosed quillenTheorem

def BordismCobordismWitnessClosed (O : BordismCobordismAdmittedObject) : Prop :=
  O.theoryClosed ∧ O.formalGroupLawClosed ∧ O.quillenTheoremClosed

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse