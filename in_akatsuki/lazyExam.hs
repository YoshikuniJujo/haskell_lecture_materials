div2 :: Int -> Int
div2 n	| even n = div2 (n `div` 2)
	| otherwise = n

div2' :: Int -> Int
div2' n = myIf (even n) (div2' $ n `div` 2) n

myIf :: Bool -> Int -> Int -> Int
myIf True t _ = t
myIf _ _ e = e

notEven :: Int -> Int -> Int
notEven a b
	| even a = b
	| otherwise = a

div2'' :: Int -> Int
div2'' n = notEven n (div2'' $ n `div` 2)

not23 :: Int -> Int -> Int -> Int
not23 a b c
	| even a = b
	| a `mod` 3 == 0 = c
	| otherwise = a

div23 :: Int -> Int
div23 n = not23 n (div23 $ n `div` 2) (div23 $ n `div` 3)
