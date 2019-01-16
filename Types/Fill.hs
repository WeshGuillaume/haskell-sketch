
{-# LANGUAGE DeriveGeneric, DeriveAnyClass, OverloadedStrings #-}

module Types.Fill where

import GHC.Generics
import Data.Aeson

import Types.Color

data Fill = Fill
  { color :: Color
  , isEnabled :: Bool
  , noiseIndex :: Float
  , patternTileScale :: Float
  , noiseIntensity :: Float
  , _class :: String
  , fillType :: Float
  , patternFillType :: Float }
  deriving (Show, Generic, ToJSON, FromJSON)
