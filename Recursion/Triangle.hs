main :: IO()

repeatString :: [Char] -> Integer -> [Char]
repeatString = repeatMeTwo ""

repeatMeTwo :: (Ord t, Num t) => [a] -> [a] -> t -> [a]
repeatMeTwo str char n = 
    if n <= 0
    then str
    else
        repeatMeTwo (str ++ char) char (n - 1) 
    

printTriangle :: [Char] -> Integer -> IO ()
printTriangle str n = do
    if n <= 0
    then return ()
    else do
        putStrLn (repeatString str n)
        printTriangle str (n - 1) 
        putStrLn (repeatString "#" n)

main = do
    print "Triangle"
    printTriangle "*" 5