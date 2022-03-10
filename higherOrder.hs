-- Partially applied functions
-- because functions only take one paramater
-- and any extra parameters are applied to that function
-- functions that take more than one parameter are thus
-- 'curried functions'.
-- 
-- let maxBetweenFour = max 4
-- maxBetweenFour 6 -- eq to max 4 6 -> 6
-- maxBetweenFour 1 -- eq to max 4 1 -> 4

-- What's happening?
-- Well, multThree 3 6 9 is actually just
-- (((multThree 3) 6) 9)
-- Because it takes one argument, 3, then returns a
-- function that takes an argument, 6, which returns
-- another function that takes an argument, 9, which
-- finally returns the result
multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

