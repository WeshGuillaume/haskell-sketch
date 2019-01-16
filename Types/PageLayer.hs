{-# LANGUAGE DeriveGeneric, DeriveAnyClass, OverloadedStrings #-}

module Types.PageLayer where

import GHC.Generics
import Data.Aeson

import qualified Types.PageLayerStyle as PLS
import qualified Types.RulerData as RD
import qualified Types.ExportOptions as EO

import Types.Layer

data PageLayer = PageLayer
  { layers :: [Layer]
  , resizesContent :: Bool
  , includeInCloudUpload :: Bool
  , style :: PLS.PageLayerStyle
  , exportOptions :: EO.ExportOptions
  , rotation :: Float
  , hasClickThrough :: Bool
  , layerListExpandedType :: Float
  , isFlippedVertical :: Bool
  , hasBackgroundColor :: Bool
  , isFlippedHorizontal :: Bool
  , clippingMaskMode :: Float
  , horizontalRulerData :: RD.RulerData
  , isFlowHome :: Bool
  , hasClippingMask :: Bool
  , isVisible :: Bool
  , booleanOperation :: Int
  , resizingType :: Float
  , _class :: String }
  deriving (Show, Generic, ToJSON, FromJSON)
