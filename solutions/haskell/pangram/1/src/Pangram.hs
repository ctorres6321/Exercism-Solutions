module Pangram (isPangram) where
import Data.Char (toLower)


isPangram :: String -> Bool
isPangram text =
  let alpha = ['a' .. 'z']
      lowered = map toLower text
  in all (`elem` lowered) alpha