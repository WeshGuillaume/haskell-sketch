
{-# LANGUAGE DeriveGeneric, DeriveAnyClass, OverloadedStrings #-}

module Types.Color where

import GHC.Generics
import Data.Aeson

data Color = Color
  { alpha :: Float
  , _class :: String
  , green :: Float
  , red :: Float
  , blue :: Float }
  deriving (Show, Generic, ToJSON, FromJSON)

fromRGBA r g b a = Color a "color" (g / 255) (r / 255) (b / 255)
