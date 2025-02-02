{--create inpFunc
inpFunc a b = [a..b]

-- Define applicatorFunc
applicatorFunc inpFunc a b s = 
    if s == 's' 
    then fromIntegral (sum (inpFunc a b))  -- Sum of the list
    else fromIntegral (sum (inpFunc a b)) / (b - a + 1)  -- Average of the list

main = do
    let result = applicatorFunc inpFunc 1 10 's'  -- Call applicatorFunc with inpFunc and 's' as args
    putStrLn ("sum = " ++ show result)

-}

-- make the function above using guards 
inpFunc a b = [a..b]

-- Define applicatorFunc
applicatorFunc inpFunc a b s | s=='s'    = sum (inpFunc a b)
                             | otherwise = (sum(inpFunc a b))/(b-a+1)
    

main = do
    let result = applicatorFunc inpFunc 1 5 's'  -- Call applicatorFunc with inpFunc and 's' as args
    putStrLn ("sum = " ++ show result)









{-applicatorFunc :: [Int] -> Char -> Double
applicatorFunc inpFunc s = 
    if s == 's' 
        then fromIntegral (sum inpFunc) 
        else fromIntegral (sum inpFunc) / fromIntegral (length inpFunc)

main :: IO ()
main = do
    putStrLn "Enter the start of the range: "
    a <- readLn
    putStrLn "Enter the end of the range: "
    b <- readLn
    putStrLn "Enter 's' for sum or any other character for average: "
    s <- getChar
    let inpFunc = [a..b]
    let result = applicatorFunc inpFunc s
    putStrLn ("Result = " ++ show result)
-}