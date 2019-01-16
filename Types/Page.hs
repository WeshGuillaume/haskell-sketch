
{-# LANGUAGE DeriveGeneric, DeriveAnyClass, OverloadedStrings #-}

module Types.Page where

import Data.Aeson
import Data.Text
import Types.Frame (Frame)
import Types.PageLayer (PageLayer)
import Types.PageLayerStyle (PageLayerStyle)
import Types.ExportOptions (ExportOptions)
import Types.RulerData (RulerData)

import GHC.Generics
import Data.Aeson

data Page = Page
  { layers :: [PageLayer]
  , resizingConstraint :: Int
  , frame :: Frame
  , clippingMaskMode :: Float
  , _class :: String
  , isLocked :: Bool
  , verticalRulerData :: RulerData
  , nameIsFixed :: Bool
  , do_objectID :: String
  , isFixedToViewport :: Bool
  , name :: String
  , shouldBreakMaskChain :: Bool
  , rotation :: Float
  , exportOptions :: ExportOptions
  , includeInCloudUpload :: Bool
  , style :: PageLayerStyle
  , isFlippedVertical :: Bool
  , isVisible :: Bool
  , layerListExpandedType :: Float
  , hasClippingMask :: Bool
  , horizontalRulerData :: RulerData
  , hasClickThrough :: Bool
  , resizingType :: Float
  , booleanOperation :: Int
  , isFlippedHorizontal :: Bool }
  deriving (Show, Generic, ToJSON, FromJSON)
