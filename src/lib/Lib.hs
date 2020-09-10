module Lib where

import Test.Hspec
import Test.QuickCheck

myPrint :: String -> IO ()
myPrint = putStrLn

tests = do
  describe "A feature" $ do
    it "can do some things" $ do
      1 `shouldBe` 1
