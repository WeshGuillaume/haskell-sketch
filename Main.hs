
{-# LANGUAGE OverloadedStrings #-}

module Main where

import Data.Aeson

import Types.Page
import Unzip

main :: IO ()
main = readSketchFile "test.sketch" >>= writeSketchFile "output.sketch"
