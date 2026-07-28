import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BordismCobordismFormalGroupCanonicalLaneLean

structure CobordismRingPackage where
  ringStructure : Type u
  additiveGroup : AddCommGroup ringStructure
  multiplication : ringStructure → ringStructure → ringStructure
  complexOrientation : ringStructure → ringStructure
  formalGroupLink : FormalGroupLawPackage
  landweberExactness : Prop
  adamsNovikovResolution : Prop

structure CobordismRingEvidence (R : CobordismRingPackage) where
  landweberExactnessClosed : R.landweberExactness
  adamsNovikovResolutionClosed : R.adamsNovikovResolution

def CobordismRingClosed (R : CobordismRingPackage) : Prop :=
  R.landweberExactness ∧ R.adamsNovikovResolution

theorem cobordism_ring_closed_from_evidence (R : CobordismRingPackage)
    (E : CobordismRingEvidence R) : CobordismRingClosed R := by
  exact And.intro E.landweberExactnessClosed E.adamsNovikovResolutionClosed

end BordismCobordismFormalGroupCanonicalLaneLean
end HautevilleHouse