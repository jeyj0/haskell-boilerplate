import Test.Hspec
import Test.QuickCheck

import qualified Lib

main :: IO ()
main = hspec $ do
  Lib.tests
