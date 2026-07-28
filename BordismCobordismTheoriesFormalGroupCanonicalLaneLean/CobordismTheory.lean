import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BordismCobordismTheoriesFormalGroupCanonicalLaneLean.BordismRing

namespace HautevilleHouse
namespace BordismCobordismTheoriesFormalGroupCanonicalLaneLean

structure CobordismTheory (B : BordismRing) where
  cohomology : ℕ → Type u
  suspension : ∀ n, cohomology n ≃ cohomology (n+1)
  pullback : ∀ f : Type v, cohomology f -> cohomology f
  exactness : Prop

structure CobordismTheoryEvidence {B : BordismRing} (C : CobordismTheory B) where
  exactnessClosed : C.exactness

def CobordismTheoryClosed {B : BordismRing} (C : CobordismTheory B) : Prop :=
  C.exactness

theorem cobordism_theory_closed_from_evidence {B : BordismRing} (C : CobordismTheory B)
    (E : CobordismTheoryEvidence C) : CobordismTheoryClosed C :=
  E.exactnessClosed

end BordismCobordismTheoriesFormalGroupCanonicalLaneLean
end HautevilleHouse