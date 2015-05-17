{-|
Module : Test

Ryan Forsyth

May 16, 2015
-}
module Test where

import Test.HUnit
import Combinatorics

-- | Tests of the Combinatorics Module
tests :: Test
tests = test [
    "testFibonacci1" ~: "" ~: Just 21 ~=? (fibonacci 8),
    "testFibonacci2" ~: "" ~: Just 1 ~=? (fibonacci 1),
    "testFibonacci3" ~: "" ~: Just 0 ~=? (fibonacci 0),
    "testFibonacci4" ~: "" ~: Nothing ~=? (fibonacci (-1)),
    "testGray1" ~: "" ~: ["00", "01", "11", "10"] ~=? (gray 2),
    "testGray2" ~: "" ~: ["0", "1"] ~=? (gray 1),
    "testGray3" ~: "" ~: [] ~=? (gray 0)]
    
-- | Call "runhaskell Test.hs" from the terminal prompt to run tests
main :: IO ()
main = do
        runTestTT tests
        return ()
