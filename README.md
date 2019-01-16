
## Type Safe Sketch File Parser

### Usage

``` haskell

-- Get the first page of a sketch file
-- and print it to the console

main :: IO ()
main = page 0 <$> readSketchFile "test.sketch" >>= (putStrLn . show)

```
