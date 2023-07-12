import Text.Read (readMaybe)

calculateCircumference :: Double -> Double
calculateCircumference radius = 2 * pi * radius

main :: IO ()
main = do
  putStrLn "Enter the radius of the circumference:"
  input <- getLine
  let maybeRadius = readMaybe input :: Maybe Double
  case maybeRadius of
    Just radius -> do
      let circumference = calculateCircumference radius
      putStrLn ("The circumference is: " ++ show circumference)
    Nothing ->
      putStrLn "Invalid input. Please enter a valid number for the radius."
