import TwoComponentsNotConnected.Statements.ConnectedRelation

namespace TwoComponentsNotConnected.Statements.TwoComponentsDisconnected

open TwoComponentsNotConnected.Statements.ConnectedRelation

axiom two_components_not_connected {V : Type u} (G : SimpleGraph V)
    (left right : V → Prop) (leftVertex rightVertex : V)
    (left_mem : left leftVertex)
    (right_mem : right rightVertex)
    (separated : ∀ u v : V, left u → right v → ¬ G.Reachable u v) :
    ¬ IsConnectedRelation G

end TwoComponentsNotConnected.Statements.TwoComponentsDisconnected
