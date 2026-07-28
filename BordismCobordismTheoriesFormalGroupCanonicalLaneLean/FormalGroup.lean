import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BordismCobordismFormalGroupCanonicalLaneLean

structure FormalGroupLawPackage where
  underlyingRing : Type u
  formalGroupLaw : underlyingRing[[X,Y]]
  associativity : Prop
  unit : Prop
  inverse : Prop
  commutative : Prop

structure FormalGroupLawEvidence (F : FormalGroupLawPackage) where
  associativityClosed : F.associativity
  unitClosed : F.unit
  inverseClosed : F.inverse
  commutativeClosed : F.commutative

def FormalGroupLawClosed (F : FormalGroupLawPackage) : Prop :=
  F.associativity ∧ F.unit ∧ F.inverse ∧ F.commutative

theorem formal_group_law_closed_from_evidence (F : FormalGroupLawPackage)
    (E : FormalGroupLawEvidence F) : FormalGroupLawClosed F := by
  exact And.intro E.associativityClosed (And.intro E.unitClosed
    (And.intro E.inverseClosed E.commutativeClosed))

end BordismCobordismFormalGroupCanonicalLaneLean
end HautevilleHouse