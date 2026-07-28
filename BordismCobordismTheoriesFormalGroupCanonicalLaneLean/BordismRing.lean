import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BordismCobordismTheoriesFormalGroupCanonicalLaneLean.ComplexCobordism

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure BordismRingPackage (n : ℕ) where
  orientedBordismRing : Type
  complexBordismRing : Type
  unorientedBordismRing : Type
  relationToCobordism : ComplexCobordismPackage
  poincareDuality : Prop
  thomIsomorphism : Prop
  poincareDualityClosed : poincareDuality
  thomIsomorphismClosed : thomIsomorphism

structure BordismRingEvidence {n : ℕ} (P : BordismRingPackage n) where
  poincareDualityClosed : P.poincareDuality
  thomIsomorphismClosed : P.thomIsomorphism

def BordismRingClosed {n : ℕ} (P : BordismRingPackage n) : Prop :=
  P.poincareDuality ∧ P.thomIsomorphism

theorem bordism_ring_closed_from_evidence {n : ℕ} (P : BordismRingPackage n) (E : BordismRingEvidence P) :
    BordismRingClosed P := by
  exact And.intro E.poincareDualityClosed E.thomIsomorphismClosed

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse