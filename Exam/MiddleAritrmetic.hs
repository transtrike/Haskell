digitToIntArr :: Integer -> [Int]
digitToIntArr = map (read . return) . show

averageTwo :: Integer -> Int
averageTwo x = div (sum (digitToIntArr x)) (length (digitToIntArr x))

main :: IO ()
main = do
    line <- getLine
    print (averageTwo (read line))