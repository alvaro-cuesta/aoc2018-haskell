module Day1
  (
    part1,
    part2,
  ) where

import Data.List
import Data.List.Split
import qualified Data.Set as Set

parseChange :: String -> Integer
parseChange ('+':num) = read num
parseChange ('-':num) = negate $ read num
parseChange x         = error $ "Wrong frenquency change: " ++ (show x)

parseChanges :: String -> [Integer]
parseChanges = map parseChange . lines

findFirstDuplicate :: [Integer] -> Integer
findFirstDuplicate = go Set.empty
  where
    go visited (x:xs)
      | x `Set.member` visited = x
      | otherwise              = go (x `Set.insert` visited) xs

-- Part 1

part1 :: String -> String
part1 = show . foldl (+) 0 . parseChanges

-- Part 2

part2 :: String -> String
part2 = show . findFirstDuplicate . scanl (+) 0 . cycle . parseChanges
