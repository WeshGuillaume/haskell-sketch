
## Type Safe Sketch File Reader/Writer

### Usage

``` haskell

-- Read a sketch file and write a copy

main :: IO ()
main = readSketchFile "test.sketch" >>= writeSketchFile "output.sketch"

```
