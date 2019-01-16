
{-# LANGUAGE DeriveGeneric, DeriveAnyClass, OverloadedStrings #-}

module Types.RulerData where

import GHC.Generics
import Data.Aeson

data RulerData = RulerData
  { guides :: [Value]
  , base :: Float }
  deriving (Show, Generic, ToJSON, FromJSON)
