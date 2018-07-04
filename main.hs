import MovingAverage
import BollingerBand

assert :: Double -> Double -> IO ()
assert left right
  | left == right = putStrLn "ok."
  | otherwise = putStrLn ("failed: " ++ show left ++ " is not equal to " ++ show right)

main :: IO ()
main = do
  assert 0.0 ( sigma [] )
  assert 1.0 ( sigma [1.0] )
  assert 7.5 ( sigma [1.0, 2.0, 3.0, 1.5] )
  assert 0.111 ( sigma [0.1, 0.01, 0.001] )
  
  assert 1.0 ( sma [1.0] )
  assert 2.0 ( sma [1.0, 2.0, 3.0] )
  assert 55.0 ( sma [100.0, 10.0] )

  assert 0.0 ( standardDeviation [2.0] )
  assert 0.0 ( standardDeviation [2.0] )
  assert 2.0 ( standardDeviation [4.0, 0.0] )
  assert 2.9832867780352594 ( standardDeviation [9, 2, 5, 4, 12, 7, 8, 11, 9, 3, 7, 4, 12, 5, 4, 10, 9, 6, 9, 4] )

  assert 27.80830459735946 ( upperBand [25.5, 26.75, 27.0, 26.5, 27.25] )
  assert 26.6 ( middleBand [25.5, 26.75, 27.0, 26.5, 27.25] )
  assert 25.391695402640543 ( lowerBand [25.5, 26.75, 27.0, 26.5, 27.25] )
