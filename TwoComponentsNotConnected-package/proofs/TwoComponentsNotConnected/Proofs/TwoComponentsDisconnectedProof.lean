import TwoComponentsNotConnected.Statements.TwoComponentsDisconnected

namespace TwoComponentsNotConnected.Proofs.TwoComponentsDisconnected

theorem two_components_not_connected {V : Type u} (reachable : V → V → Prop)
    (left right : V → Prop) (leftVertex rightVertex : V)
    (left_mem : left leftVertex)
    (right_mem : right rightVertex)
    (separated : ∀ u v : V, left u → right v → ¬ reachable u v) :
    ¬ ∀ u v : V, reachable u v := by
  intro connected
  exact separated leftVertex rightVertex left_mem right_mem (connected leftVertex rightVertex)

end TwoComponentsNotConnected.Proofs.TwoComponentsDisconnected
