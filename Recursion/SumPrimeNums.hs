sumPrimeNums input =
    sumPrimeNumsTwo 0 2 input

sumPrimeNumsTwo currentSum currentPrime n = do
    if n <= 0
    then currentSum
    else
        sumPrimeNumsTwo (currentSum + currentPrime) (findNextPrime currentPrime) (n - 1) 
    
findNextPrime :: Int -> Int
findNextPrime currentPrime =
    if isPrime (currentPrime + 1)
    then currentPrime + 1
    else
        findNextPrime (currentPrime + 1)

isPrime :: Int -> Bool
isPrime currentPrime = 
    isPrimeTwo currentPrime (currentPrime - 1)

isPrimeTwo :: Int -> Int -> Bool
isPrimeTwo n current = do
    if current == 1
    then True
    else if (n `mod` current) == 0
    then False
    else isPrimeTwo n (current - 1)


main :: IO ()
main = do
    print "Sum prime numbers"
    print (sumPrimeNums 50)