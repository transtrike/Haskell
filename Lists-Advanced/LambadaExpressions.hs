dance :: [String] -> [String]
dance arr = arr

readUntilInner :: [String] -> String -> String -> [String]
readUntilInner arr endWord danceWord = do
    line <- getLine
    if line == endWord
    then arr
    else if line == danceWord
    then dance arr
    else do
        readUntilInner (arr ++ [line]) endWord danceWord

readUntil :: [String]
readUntil = 
    readUntilInner [] "lambada" "dance"

main :: IO ()
main = do
    -- {selector} => {selectorObject}.{property}
    -- DOESN'T WORK FOR NOW!!!!
    print readUntil