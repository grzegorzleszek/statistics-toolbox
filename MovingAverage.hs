module MovingAverage where

sigma :: (Num a) => [a] -> a
sigma xs = foldl (\acc x -> acc + x) 0 xs

mean :: [Double] -> Double
mean xs = sigma (xs) / fromIntegral (length xs)

sma :: [Double] -> Double
sma = mean
