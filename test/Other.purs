module Other.Spec where

import Prelude
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual, shouldNotEqual)
import Other (times, dollar, franc, plus)

spec :: Spec Unit
spec =
    describe "Other" do
        describe "times" do
            it "should return 10 dollars when 5 dollars is multiplied by two" do
                times 2 (dollar 5) `shouldEqual` dollar 10
            it "10 dollars should not equal 10 francs" do
                dollar 10 `shouldNotEqual` franc 10
        describe "plus" do
            it "simple addition" do
                plus (dollar 5) (dollar 5) `shouldEqual` dollar 10