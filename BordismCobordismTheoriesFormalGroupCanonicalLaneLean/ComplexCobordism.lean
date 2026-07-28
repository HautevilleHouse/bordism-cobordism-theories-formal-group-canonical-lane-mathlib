import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BordismCobordismTheoriesFormalGroupCanonicalLaneLean.FormalGroupLaw

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure ComplexCobordismPackage where
  muSpectrum : Type
  formalGroupLaw : FormalGroupLawPackage ℤ
  orientedCobordismRing : Type
  complexBordismRing : Type
  formalGroupLawAssociated : formalGroupLaw.formalGroupLaw = muFormalGroupLaw muSpectrum
  adamsNovikovSseq : Type
  universalProperty : Prop
  universalPropertyClosed : universalProperty

structure ComplexCobordismEvidence (P : ComplexCobordismPackage) where
  formalGroupLawAssociatedClosed : P.formalGroupLawAssociated
  universalPropertyClosed : P.universalProperty

def ComplexCobordismClosed (P : ComplexCobordismPackage) : Prop :=
  P.formalGroupLawAssociated ∧ P.universalProperty

theorem complex_cobordism_closed_from_evidence (P : ComplexCobordismPackage) (E : ComplexCobordismEvidence P) :
    ComplexCobordismClosed P := by
  exact And.intro E.formalGroupLawAssociatedClosed E.universalPropertyClosed

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse