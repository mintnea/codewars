-- 30th march 2023
-- ############################
-- A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

-- Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.
-- ############################

module Pangram where
import Data.Char (toLower)


isPangram :: String -> Bool
isPangram str = let chars = ['a'..'z']
  in all (`elem` map toLower str) chars