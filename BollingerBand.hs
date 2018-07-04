module BollingerBand where

import MovingAverage

squaredError :: Double -> Double -> Double
squaredError mean x = ( x - mean )^2

summation :: [Double] -> Double
summation = foldr (+) 0

standardDeviation :: [Double] -> Double
standardDeviation xs =
  let squaredErrorWithMean = map (squaredError (mean xs)) xs
  in sqrt ( summation squaredErrorWithMean / fromIntegral (length xs) )

upperBand :: [Double] -> Double
upperBand xs = sma xs + 2 * standardDeviation xs

middleBand :: [Double] -> Double
middleBand = sma

lowerBand :: [Double] -> Double
lowerBand xs = sma xs - 2 * standardDeviation xs
