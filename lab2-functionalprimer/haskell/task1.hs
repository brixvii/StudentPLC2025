module Main where

main =
    do
    print (myFunc1 5)
    print (MyFunc2 10) --correct version (myFunc2 10)
    print (3rdFunc) --correct version (thirdFunc)

myFunc1 x = x*10
MyFunc2 x = x*2 --correct version myFunc2 x = x*2
3rdFunc = "Hello, this is 3rd Func" --correct version thirdFunc = "Hello, this is 3rd Func"

