
{-# LANGUAGE DeriveGeneric, DeriveAnyClass, OverloadedStrings #-}

module Types.PageLayerStyle where

import Data.Aeson
import Data.Text

import GHC.Generics
import Data.Aeson

data PageLayerStyle = PageLayerStyle
  { endMarkerType :: Float
  , miterLimit :: Float
  , windingRule :: Float
  , startMarkerType :: Float }
  deriving (Show, Generic, ToJSON, FromJSON)
