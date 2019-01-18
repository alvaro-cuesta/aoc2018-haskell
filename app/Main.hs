module Main where

import System.Environment
import Day1

runExercise :: [String] -> IO ()
runExercise ["1", "1"] = interact Day1.part1
runExercise ["1", "2"] = interact Day1.part2
runExercise x = error $ "Exercise '" ++ (show x) ++ "' not implemented"

main :: IO ()
main = do
  args <- getArgs
  runExercise args
  putStrLn ""
