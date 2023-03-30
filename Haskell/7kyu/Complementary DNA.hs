-- 30th march 2023
-- ############################
-- Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the "instructions" for the development and functioning of living organisms.
-- If you want to know more: http://en.wikipedia.org/wiki/DNA
-- In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". Your function receives one side of the DNA (string, except for Haskell); you need to return the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).
-- More similar exercise are found here: http://rosalind.info/problems/list-view/ (source)

-- Example: (input --> output)

-- dnaStrand []  shouldBe [] dnaStrand [A,T,G,C] shouldBe [T,A,C,G] dnaStrand [G,T,A,T] shouldBe [C,A,T,A] dnaStrand [A,A,A,A] shouldBe [T,T,T,T]
-- ############################

module Codewars.Kata.DNA where
import Codewars.Kata.DNA.Types

-- data Base = A | T | G | C
type DNA = [Base]

dnaStrand :: DNA -> DNA
dnaStrand d = let 
    repl A = T
    repl T = A
    repl C = G
    repl G = C
  in  map repl d