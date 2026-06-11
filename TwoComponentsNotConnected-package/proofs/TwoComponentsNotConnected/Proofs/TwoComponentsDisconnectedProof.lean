import Mathlib.Combinatorics.SimpleGraph.Connectivity.Connected
import TwoComponentsNotConnected.Statements.TwoComponentsDisconnected

namespace TwoComponentsNotConnected.Proofs.TwoComponentsDisconnected

theorem two_components_not_connected {V : Type u} (G : SimpleGraph V)
    (left right : Set V) (leftVertex rightVertex : V)
    (left_mem : leftVertex ∈ left)
    (right_mem : rightVertex ∈ right)
    (separated : ∀ u v : V, u ∈ left → v ∈ right → ¬ G.Reachable u v) :
    ¬ G.Connected := by
  intro connected
  exact separated leftVertex rightVertex left_mem right_mem (connected leftVertex rightVertex)

end TwoComponentsNotConnected.Proofs.TwoComponentsDisconnected
