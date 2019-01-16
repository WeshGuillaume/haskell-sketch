
{-# LANGUAGE DeriveGeneric, DeriveAnyClass, OverloadedStrings #-}

module Types.Border where

import GHC.Generics
import Data.Aeson

import Types.Color

data Border = Border
  { isEnabled :: Bool
  , _class :: String
  , thickness :: Float
  , fillType :: Float
  , position :: Float
  , color :: Color }
  deriving (Show, Generic, ToJSON, FromJSON)

