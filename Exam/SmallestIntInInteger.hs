digitToIntArr :: Integer -> [Int]
digitToIntArr = map (read . return) . show

smallestFigure :: Integer -> Int
smallestFigure input = minimum (digitToIntArr input)

main :: IO ()
main = do
    line <- getLine
    print $ smallestFigure $ read line