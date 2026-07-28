import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure QuillenTheoremPackage {B : BordismTheoryPackage} {F : FormalGroupLawPackage B} where
  universalProperty : Prop
  bordismToFormalGroupMap : Prop
  isomorphismOnCoefficients : Prop
  quillenTheorem : Prop

structure QuillenTheoremEvidence {B : BordismTheoryPackage} {F : FormalGroupLawPackage B}
    (Q : QuillenTheoremPackage) where
  universalPropertyClosed : Q.universalProperty
  bordismToFormalGroupMapClosed : Q.bordismToFormalGroupMap
  isomorphismOnCoefficientsClosed : Q.isomorphismOnCoefficients
  quillenTheoremClosed : Q.quillenTheorem

def QuillenTheoremClosed {B : BordismTheoryPackage} {F : FormalGroupLawPackage B}
    (Q : QuillenTheoremPackage) : Prop :=
  Q.universalProperty ∧ Q.bordismToFormalGroupMap ∧ Q.isomorphismOnCoefficients ∧ Q.quillenTheorem

theorem quillen_theorem_closed_from_evidence {B : BordismTheoryPackage} {F : FormalGroupLawPackage B}
    (Q : QuillenTheoremPackage) (E : QuillenTheoremEvidence Q) : QuillenTheoremClosed Q := by
  exact And.intro E.universalPropertyClosed
    (And.intro E.bordismToFormalGroupMapClosed
      (And.intro E.isomorphismOnCoefficientsClosed E.quillenTheoremClosed))

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse