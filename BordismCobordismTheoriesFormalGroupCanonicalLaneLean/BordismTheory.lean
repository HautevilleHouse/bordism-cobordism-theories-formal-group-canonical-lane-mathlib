import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BordismCobordismFormalGroupCanonicalLaneLean

structure BordismTheoryPackage where
  manifoldType : Type u
  structureGroup : Type v
  bordismGroups : ℕ → Type w
  coefficientRing : Type x
  homotopyCommutative : Prop
  transversalRegularity : Prop

structure BordismTheoryEvidence (B : BordismTheoryPackage) where
  homotopyCommutativeClosed : B.homotopyCommutative
  transversalRegularityClosed : B.transversalRegularity

def BordismTheoryClosed (B : BordismTheoryPackage) : Prop :=
  B.homotopyCommutative ∧ B.transversalRegularity

theorem bordism_theory_closed_from_evidence (B : BordismTheoryPackage)
    (E : BordismTheoryEvidence B) : BordismTheoryClosed B := by
  exact And.intro E.homotopyCommutativeClosed E.transversalRegularityClosed

end BordismCobordismFormalGroupCanonicalLaneLean
end HautevilleHouse