import TwoComponentsNotConnected.Statements.ConnectedRelation

namespace TwoComponentsNotConnected.Statements.TwoComponentsDisconnected

open TwoComponentsNotConnected.Statements.ConnectedRelation

axiom two_components_not_connected {V : Type u} (reachable : V → V → Prop)
    (left right : V → Prop) (leftVertex rightVertex : V)
    (left_mem : left leftVertex)
    (right_mem : right rightVertex)
    (separated : ∀ u v : V, left u → right v → ¬ reachable u v) :
    ¬ IsConnectedRelation reachable

end TwoComponentsNotConnected.Statements.TwoComponentsDisconnected
