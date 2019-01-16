{-# LANGUAGE DeriveGeneric, DeriveAnyClass, OverloadedStrings #-}

module Types.Point where

import GHC.Generics
import Data.Aeson

data Point = Point
  { curveTo :: String
  , point :: String
  , _class :: String
  , cornerRadius :: Float
  , curveMode :: Float
  , curveFrom :: String
  , hasCurveFrom :: Bool
  , hasCurveTo :: Bool }
  deriving (Show, Generic, ToJSON, FromJSON)
