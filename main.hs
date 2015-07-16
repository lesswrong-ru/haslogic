import qualified Logic.Propositional as LP

main = do
    let f = LP.T `LP.Implies` (LP.F `LP.Or` LP.T)
    print f
    print $ LP.formulaValue f
