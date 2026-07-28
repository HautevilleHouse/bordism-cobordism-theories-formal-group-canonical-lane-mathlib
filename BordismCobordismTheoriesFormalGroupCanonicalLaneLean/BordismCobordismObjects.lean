import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure BordismCobordismAdmittedObject where
  baseRing : Type u
  formalGroupLaw : Type v
  universalProperty : Prop
  conclusion : universalProperty

structure BordismCobordismEndgameState where
  object : BordismCobordismAdmittedObject

def BordismCobordismWitnessClosed (O : BordismCobordismAdmittedObject) : Prop :=
  O.universalProperty

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse