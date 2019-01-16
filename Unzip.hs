
module Unzip where

import qualified Data.ByteString.Lazy as BL
import Data.Aeson
import Codec.Archive.Zip

import Types.Page

readSketchFile :: FilePath -> IO Archive
readSketchFile file = toArchive <$> BL.readFile file

getEntries a = map fromEntry (zEntries a)

writeSketchFile :: FilePath -> Archive -> IO ()
writeSketchFile p = (BL.writeFile p . fromArchive)

document :: [BL.ByteString] -> BL.ByteString
document = (!!0)

user :: [BL.ByteString] -> BL.ByteString
user = (!!2) . reverse

meta :: [BL.ByteString] -> BL.ByteString
meta = (!!2) . reverse

pages :: Archive -> [BL.ByteString]
pages fs = (take (length wD - 1) wD)
  where wD = (drop 1) fs'
        fs' = getEntries fs

page :: Int -> Archive -> Maybe Page
page i fs = (decode $ (pages fs) !! i) :: Maybe Page

