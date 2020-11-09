import Data.List ( sortOn )
import Data.Ord ( Down(Down) )

sortDesc :: Ord a => [a] -> [a]
sortDesc = sortOn Down

main :: IO ()
main = do
    let arr = ["asd", "bsd", "csd"]
    print $ sortDesc arr