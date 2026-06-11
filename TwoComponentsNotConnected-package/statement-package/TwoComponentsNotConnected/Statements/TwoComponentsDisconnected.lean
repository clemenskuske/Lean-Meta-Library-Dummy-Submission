import Mathlib.Combinatorics.SimpleGraph.Connectivity.Connected

namespace TwoComponentsNotConnected.Statements.TwoComponentsDisconnected

axiom two_components_not_connected {V : Type u} (G : SimpleGraph V)
    (left right : Set V) (leftVertex rightVertex : V)
    (left_mem : leftVertex ∈ left)
    (right_mem : rightVertex ∈ right)
    (separated : ∀ u v : V, u ∈ left → v ∈ right → ¬ G.Reachable u v) :
    ¬ G.Connected

end TwoComponentsNotConnected.Statements.TwoComponentsDisconnected
