{-# LANGUAGE DeriveGeneric, DeriveAnyClass, OverloadedStrings #-}

module Types.Layer where

import GHC.Generics
import Data.Aeson

import Types.Fill (Fill)
import Types.Border (Border)
import Types.Point (Point)
import Types.ExportOptions (ExportOptions)
import Types.Frame (Frame)
import Types.LayerStyle (LayerStyle)
import Types.Color

data Layer = Layer
  { name :: String
  , layers :: Maybe [Layer]
  , shouldBreakMaskChain :: Bool
  , style :: LayerStyle
  , edited :: Maybe Bool
  , hasConvertedToNewRoundCorners :: Maybe Bool
  , points :: Maybe [Value]
  , isClosed :: Maybe Bool
  , fixedRadius :: Maybe Float
  , pointRadiusBehaviour :: Maybe Float
  , isFixedToViewport :: Bool
  , nameIsFixed :: Bool
  , do_objectID :: String
  , isLocked :: Bool
  , frame :: Frame
  , clippingMaskMode :: Float
  , _class :: String
  , resizingType :: Float
  , booleanOperation :: Int
  , isFlippedHorizontal :: Bool
  , layerListExpandedType :: Float
  , hasClippingMask :: Bool
  , isFlippedVertical :: Bool
  , isVisible :: Bool
  , exportOptions :: ExportOptions
  , rotation :: Float }
  deriving (Show, Generic, ToJSON, FromJSON)
