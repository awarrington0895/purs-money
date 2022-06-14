module Currency.Spec where

import Prelude

import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)
import Currency (times)
import Currency.Dollar (from) as Dollar
import Currency.Franc (from) as Franc

spec :: Spec Unit
spec =
    describe "Multiplication" do
        it "should return 10 dollars when five dollars is multplied by two" do
            (times 2 (Dollar.from 5)) `shouldEqual` (Dollar.from 10)
        it "should return 15 dollars when five dollars is multiplied by three" do
            (times 3 (Dollar.from 5)) `shouldEqual` (Dollar.from 15)
        it "should return 10 franc when five franc is multiplied by two" do
            (times 2 (Franc.from 5)) `shouldEqual` (Franc.from 10)