--create inpFunc
{-inpFunc = [a..b] 

--Define applicatorFunc
applicatorFunc inpFunc s = if s=='s' then sum inpFunc else (sum inpFunc)/5  

main = do
    let result = applicatorFunc inpFunc 'a' --Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))

-}

applicatorFunc :: [Int] -> Char -> Double
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
