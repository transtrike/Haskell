-- dance :: [String] -> [String]
-- dance arr = arr

-- readUntilInner :: [String] -> String -> String -> [IO String]
-- readUntilInner arr endWord danceWord = do
--     line <- getLine
--     if line == endWord
--     then arr
--     else if line == danceWord
--     then dance arr
--     else do
--         readUntilInner (arr ++ [line]) endWord danceWord

-- readUntil :: [IO String]
-- readUntil = readUntilInner [] "lambada" "dance"

-- main :: [IO String]
-- main = do
--     -- {selector} => {selectorObject}.{property}
--     -- DOESN'T WORK FOR NOW!!!!
--     readUntil

-- readUntilInner :: [String] -> IO ()
-- readUntilInner arr = do
--     line <- getLine
--     if line == "lambada"
--     then arr
--     else 
        


readUntil :: IO ()
readUntil = 
    print 4
    --readUntilInner []

main :: IO ()
main = readUntil