fib :: Integer -> Integer
fib num =
    if num < 2
    then num
    else
        fib (num - 1) + fib (num - 2)

main :: IO()
main = do
    -- line <- getLine
    -- print (fib read line))
    -- Look up what "accumulator" means
    print $ fib 30 -- TODO: Write the implementation properly from the task