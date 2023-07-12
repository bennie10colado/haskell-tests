quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (x:xs) =
  let smallerSorted = quickSort [y | y <- xs, y <= x]
      largerSorted = quickSort [y | y <- xs, y > x]
  in smallerSorted ++ [x] ++ largerSorted

main :: IO ()
main = do
  putStrLn "Enter the numbers separated by spaces:"
  input <- getLine
  let numbers = map read (words input) :: [Int]

  putStrLn "Original list:"
  print numbers

  let sortedNumbers = quickSort numbers

  putStrLn "Sorted list:"
  print sortedNumbers
