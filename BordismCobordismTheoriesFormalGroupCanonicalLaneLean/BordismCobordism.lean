import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure BordismTheoryPackage where
  baseManifold : Type u
  dimension : ℕ
  oriented : Prop
  cobordismRing : Type v
  smoothStructure : Prop
  orientationConsistent : Prop
  cobordismRingAxioms : Prop
  formalGroupLawAssociated : Prop

structure BordismTheoryEvidence (B : BordismTheoryPackage) where
  smoothStructureClosed : B.smoothStructure
  orientationConsistentClosed : B.orientationConsistent
  cobordismRingAxiomsClosed : B.cobordismRingAxioms
  formalGroupLawAssociatedClosed : B.formalGroupLawAssociated

def BordismTheoryClosed (B : BordismTheoryPackage) : Prop :=
  B.smoothStructure ∧ B.orientationConsistent ∧ B.cobordismRingAxioms ∧ B.formalGroupLawAssociated

theorem bordism_theory_closed_from_evidence (B : BordismTheoryPackage) (E : BordismTheoryEvidence B) :
    BordismTheoryClosed B := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.orientationConsistentClosed
      (And.intro E.cobordismRingAxiomsClosed E.formalGroupLawAssociatedClosed))

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse