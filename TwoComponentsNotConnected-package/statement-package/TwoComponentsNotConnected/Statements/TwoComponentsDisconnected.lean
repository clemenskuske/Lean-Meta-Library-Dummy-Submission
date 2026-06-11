namespace TwoComponentsNotConnected.Statements.TwoComponentsDisconnected

axiom two_components_not_connected {V : Type u} (reachable : V → V → Prop)
    (left right : V → Prop) (leftVertex rightVertex : V)
    (left_mem : left leftVertex)
    (right_mem : right rightVertex)
    (separated : ∀ u v : V, left u → right v → ¬ reachable u v) :
    ¬ ∀ u v : V, reachable u v

end TwoComponentsNotConnected.Statements.TwoComponentsDisconnected
