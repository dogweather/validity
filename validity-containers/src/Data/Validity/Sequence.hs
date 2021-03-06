{-# OPTIONS_GHC -Wno-orphans #-}

module Data.Validity.Sequence where

import Data.Validity

import Data.Sequence (Seq)

-- | A 'Seq'uence of things is valid if all the elements are valid.
instance Validity v =>
         Validity (Seq v) where
    isValid = all isValid
