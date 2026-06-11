namespace TwoComponentsNotConnected.Statements.ConnectedRelation

def IsConnectedRelation {V : Type u} (reachable : V → V → Prop) : Prop :=
  ∀ u v : V, reachable u v

end TwoComponentsNotConnected.Statements.ConnectedRelation
