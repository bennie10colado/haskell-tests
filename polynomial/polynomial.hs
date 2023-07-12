-- polinomio em haskell

polinomio :: Int -> Int
polinomio x = x * x + 10 * x + 2

main :: IO ()
main = do
  input <- getLine
  let x = read input :: Int
  putStrLn ("Número " ++ show x ++ " recebido com sucesso!")
  let resultado = polinomio x
  putStrLn ("O resultado é: " ++ show resultado)
