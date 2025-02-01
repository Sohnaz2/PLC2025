module Main where

main =
    do
    print (myFunc1 5)
    print (myFunc2 10)
    print (thirdrdFunc)
myFunc1 :: Int -> Int
myFunc1 x = x*10

myFunc2 :: Int -> Int
myFunc2 x = x*2

thirdrdFunc :: String
thirdrdFunc = "Hello, this is 3rd Func"