concatToArr :: a -> [a] -> [a]
concatToArr word arr = do
    arr ++ [word]

loopFunc :: [String] -> String -> IO [String]
loopFunc arr endWord = do
    line <- getLine
    if line == endWord
    then return arr
    else do
        loopFunc (concatToArr line arr) endWord

readUntil :: IO [String]
readUntil = loopFunc [] "end"

main :: IO()
main = do
    result <- readUntil
    print result