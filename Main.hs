
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Aeson

import Types.Page
import Unzip

main :: IO ()
main = page 0 <$> readSketchFile "test.sketch" >>= (putStrLn . show)
