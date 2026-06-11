import Mathlib.Combinatorics.SimpleGraph.Connectivity.Connected

namespace TwoComponentsNotConnected.Statements.ConnectedRelation

def IsConnectedRelation {V : Type u} (G : SimpleGraph V) : Prop :=
  ∀ u v : V, G.Reachable u v

end TwoComponentsNotConnected.Statements.ConnectedRelation
