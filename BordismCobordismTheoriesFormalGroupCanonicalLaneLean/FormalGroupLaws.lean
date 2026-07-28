import HautevilleHouse.BordismCobordismTheoriesFormalGroupCanonicalLaneLean.CobordismRing

/-!
# Formal Group Laws Package
-/

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure FormalGroupLaw where
  formalVariable : Type u
  groupStructure : Type v
  powerSeries : Type w
  associativityCondition : Prop
  commutativityCondition : Prop
  unitCondition : Prop

default proof

structure FormalGroupLawEvidence (F : FormalGroupLaw) where
  associativityClosed : F.associativityCondition
  commutativityClosed : F.commutativityCondition
  unitClosed : F.unitCondition

def FormalGroupLawClosed (F : FormalGroupLaw) : Prop :=
  F.associativityCondition ∧ F.commutativityCondition ∧ F.unitCondition

theorem formal_group_law_closed_from_evidence (F : FormalGroupLaw) (E : FormalGroupLawEvidence F) :
    FormalGroupLawClosed F :=
  by exact And.intro E.associativityClosed (And.intro E.commutativityClosed E.unitClosed)

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse
