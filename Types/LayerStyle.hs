{-# LANGUAGE DeriveGeneric, DeriveAnyClass, OverloadedStrings #-}

module Types.LayerStyle where

import GHC.Generics
import Data.Aeson

import Types.Border (Border)
import Types.Fill (Fill)

data LayerStyle = Style
  { startMarkerType :: Float
  , windingRule :: Float
  , _class :: String
  , miterLimit :: Float
  , borders :: Maybe [Border]
  , fills :: Maybe [Fill]
  , endMarkerType :: Float }
  deriving (Show, Generic, ToJSON, FromJSON)
