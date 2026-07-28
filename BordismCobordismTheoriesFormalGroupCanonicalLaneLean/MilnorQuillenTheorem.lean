import canonicalLaneMathlib.AdmissibleClass
import .CobordismTheory

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure MilnorQuillenTheoremPackage {F : FormalGroupLawPackage} {B : BordismRingPackage F}
    {C : CobordismTheoryPackage F B} where
  mUBordismRingIsPolynomial : Prop
  formalGroupLawIsUniversal : Prop
  theoremProof : Prop

structure MilnorQuillenTheoremEvidence {F : FormalGroupLawPackage} {B : BordismRingPackage F}
    {C : CobordismTheoryPackage F B} (M : MilnorQuillenTheoremPackage F B C) where
  mUBordismRingIsPolynomialClosed : M.mUBordismRingIsPolynomial
  formalGroupLawIsUniversalClosed : M.formalGroupLawIsUniversal
  theoremProofClosed : M.theoremProof

def MilnorQuillenTheoremClosed {F : FormalGroupLawPackage} {B : BordismRingPackage F}
    {C : CobordismTheoryPackage F B} (M : MilnorQuillenTheoremPackage F B C) : Prop :=
  M.mUBordismRingIsPolynomial ∧ M.formalGroupLawIsUniversal ∧ M.theoremProof

theorem milnor_quillen_theorem_closed_from_evidence
    {F : FormalGroupLawPackage} {B : BordismRingPackage F}
    {C : CobordismTheoryPackage F B} (M : MilnorQuillenTheoremPackage F B C)
    (E : MilnorQuillenTheoremEvidence M) : MilnorQuillenTheoremClosed M := by
  exact And.intro E.mUBordismRingIsPolynomialClosed
    (And.intro E.formalGroupLawIsUniversalClosed E.theoremProofClosed)

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse