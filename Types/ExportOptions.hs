{-# LANGUAGE DeriveGeneric, DeriveAnyClass, OverloadedStrings #-}

module Types.ExportOptions where

import Data.Aeson
import Data.Text

import GHC.Generics
import Data.Aeson

data ExportOptions = ExportOptions
  { layerOptions :: Float
  , shouldTrim :: Bool
  , includedLayerIds :: [Value]
  , exportFormats :: [Value] }
  deriving (Show, Generic, ToJSON, FromJSON)
