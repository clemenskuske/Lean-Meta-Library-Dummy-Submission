import Lake
open Lake DSL

package TwoComponentsNotConnected.Proofs where

require TwoComponentsNotConnected.Statements from "./statement-package"

@[default_target]
lean_lib TwoComponentsNotConnected.Proofs where
  srcDir := "proofs"
