import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure FormalGroupLaw (R : Type) where
  powerSeries : R[[]][[]]  -- F(X,Y) ∈ R[[X,Y]]
  zero : powerSeries 0 0 = 0
  unit : powerSeries X 0 = X ∧ powerSeries 0 Y = Y
  associativity : powerSeries (powerSeries X Y) Z = powerSeries X (powerSeries Y Z)
  commutativity : powerSeries X Y = powerSeries Y X

structure FormalGroupLawPackage (R : Type) where
  formalGroupLaw : FormalGroupLaw R
  coefficientRing : CommRing R
  universalProperty : Prop
  lazardRing : Type
  lazardMap : lazardRing → R
  universalPropertyClosed : universalProperty

structure FormalGroupLawEvidence {R : Type} (P : FormalGroupLawPackage R) where
  formalGroupLawClosed : P.formalGroupLaw.zero ∧ P.formalGroupLaw.unit ∧ P.formalGroupLaw.associativity ∧ P.formalGroupLaw.commutativity
  lazardRingClosed : P.lazardRing = L -- Lazard ring
  universalPropertyClosed : P.universalProperty

def FormalGroupLawClosed {R : Type} (P : FormalGroupLawPackage R) : Prop :=
  (P.formalGroupLaw.zero ∧ P.formalGroupLaw.unit ∧ P.formalGroupLaw.associativity ∧ P.formalGroupLaw.commutativity) ∧
  (P.lazardRing = L) ∧ P.universalProperty

theorem formal_group_law_closed_from_evidence {R : Type} (P : FormalGroupLawPackage R) (E : FormalGroupLawEvidence P) :
    FormalGroupLawClosed P := by
  exact And.intro (And.intro (And.intro (And.intro E.formalGroupLawClosed.1 E.formalGroupLawClosed.2.1) E.formalGroupLawClosed.2.2.1) E.formalGroupLawClosed.2.2.2)
    (And.intro E.lazardRingClosed E.universalPropertyClosed)

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse