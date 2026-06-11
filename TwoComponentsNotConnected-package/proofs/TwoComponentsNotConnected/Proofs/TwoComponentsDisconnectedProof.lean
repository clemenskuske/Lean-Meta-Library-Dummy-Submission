import TwoComponentsNotConnected.Statements.TwoComponentsDisconnected

namespace TwoComponentsNotConnected.Proofs.TwoComponentsDisconnected

open TwoComponentsNotConnected.Statements.ConnectedRelation

theorem two_components_not_connected {V : Type u} (G : SimpleGraph V)
    (left right : V → Prop) (leftVertex rightVertex : V)
    (left_mem : left leftVertex)
    (right_mem : right rightVertex)
    (separated : ∀ u v : V, left u → right v → ¬ G.Reachable u v) :
    ¬ IsConnectedRelation G := by
  intro connected
  exact separated leftVertex rightVertex left_mem right_mem (connected leftVertex rightVertex)

end TwoComponentsNotConnected.Proofs.TwoComponentsDisconnected
