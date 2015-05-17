{-|
Module : Combinatorics

Ryan Forsyth

May 16, 2015
-}
module Combinatorics (fibonacci) where

import Control.Monad -- for liftM2


-- | Compute the n-th Fibonacci Number
fibonacci :: Int -> Maybe Int
fibonacci n
    | n == 0 = Just 0
    | n == 1 = Just 1
    | n > 1 = liftM2 (+) (fibonacci (n - 1)) (fibonacci (n - 2))
    | otherwise = Nothing
