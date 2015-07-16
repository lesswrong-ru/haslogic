module Logic.Propositional (
    Formula(..),
    formulaValue
) where

data Formula = T | F | And Formula Formula | Or Formula Formula | Implies Formula Formula | Not Formula deriving Show

formulaValue :: Formula -> Bool
formulaValue (T) = True
formulaValue (F) = False
formulaValue (And x y) = formulaValue x && formulaValue y
formulaValue (Or x y) = formulaValue x || formulaValue y
formulaValue (Implies x y) = (not $ formulaValue x) || formulaValue y
formulaValue (Not x) = not $ formulaValue x
