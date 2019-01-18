import Test.Hspec

import Day1

main :: IO ()
main = hspec $ do
  describe "Day 1 - Part 1" $ do
    it "example 1 works" $ do
      Day1.part1 "+1\n-2\n+3\n+1" `shouldBe` "3"

    it "example 2 works" $ do
      Day1.part1 "+1\n+1\n+1" `shouldBe` "3"

    it "example 3 works" $ do
      Day1.part1 "+1\n+1\n-2" `shouldBe` "0"

    it "example 4 works" $ do
      Day1.part1 "-1\n-2\n-3" `shouldBe` "-6"

  describe "Day 1 - Part 2" $ do
    it "example 1 works" $ do
      Day1.part2 "+1\n-2\n+3\n+1" `shouldBe` "2"

    it "example 2 works" $ do
      Day1.part2 "+1\n-1" `shouldBe` "0"

    it "example 3 works" $ do
      Day1.part2 "+3\n+3\n+4\n-2\n-4" `shouldBe` "10"

    it "example 4 works" $ do
      Day1.part2 "-6\n+3\n+8\n+5\n-6" `shouldBe` "5"

    it "example 5 works" $ do
      Day1.part2 "+7\n+7\n-2\n-7\n-4" `shouldBe` "14"
