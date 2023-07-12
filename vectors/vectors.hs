import qualified Data.Vector as V
import Text.Printf (printf)

dotProduct :: Num a => V.Vector a -> V.Vector a -> Maybe a
dotProduct vec1 vec2
  | V.length vec1 /= V.length vec2 = Nothing
  | otherwise = Just (V.sum $ V.zipWith (*) vec1 vec2)

readVector :: Read a => IO (V.Vector a)
readVector = do
  --Enter the elements of the vector separated by spaces
  input <- getLine
  let elements = map read (words input)
  return (V.fromList elements)

main :: IO ()
main = do
  -- Entering the first vector
  vec1 <- readVector :: IO (V.Vector Double)

  -- Entering the second vector
  vec2 <- readVector :: IO (V.Vector Double)

  case dotProduct vec1 vec2 of
    Just result -> do
      putStrLn "First vector:"
      print vec1

      putStrLn "Second vector:"
      print vec2

      putStrLn "Dot product:"
      printf "%.2f\n" (result :: Double)
    Nothing -> putStrLn "Vectors must have the same length"
