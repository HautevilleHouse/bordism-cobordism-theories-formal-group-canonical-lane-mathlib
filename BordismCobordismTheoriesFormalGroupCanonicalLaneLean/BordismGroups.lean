import HautevilleHouse.BordismCobordismTheoriesFormalGroupCanonicalLaneLean.FormalGroupLaws

/-!
# Bordism Groups Package
-/

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure BordismGroups where
  manifoldDimension : Nat
  orientedBordismGroup : Type u
  unorientedBordismGroup : Type v
  cobordismRelation : Prop
  groupStructure : Prop
  formalGroupLawConnected : FormalGroupLaw

default proof

structure BordismGroupsEvidence (B : BordismGroups) where
  cobordismRelationClosed : B.cobordismRelation
  groupStructureClosed : B.groupStructure
  formalGroupLawConnectedClosed : FormalGroupLawClosed B.formalGroupLawConnected

def BordismGroupsClosed (B : BordismGroups) : Prop :=
  B.cobordismRelation ∧ B.groupStructure ∧ FormalGroupLawClosed B.formalGroupLawConnected

theorem bordism_groups_closed_from_evidence (B : BordismGroups) (E : BordismGroupsEvidence B) :
    BordismGroupsClosed B :=
  by
    exact And.intro E.cobordismRelationClosed (And.intro E.groupStructureClosed E.formalGroupLawConnectedClosed)

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse
