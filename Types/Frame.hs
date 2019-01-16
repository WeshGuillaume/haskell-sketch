{-# LANGUAGE DeriveGeneric, DeriveAnyClass, OverloadedStrings #-}

module Types.Frame where

import GHC.Generics
import Data.Aeson

data Frame = Point
  { constrainProportions :: Bool
  , y :: Float
  , x :: Float
  , _class :: String
  , width :: Float
  , height :: Float }
  deriving (Show, Generic, ToJSON, FromJSON)
