{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE RecordWildCards #-}

module Data.Validity.Time.Format where

import Data.Validity

import Data.Time.Format

import Data.Validity.Time.LocalTime ()

-- | Valid according to the contained values
instance Validity TimeLocale where
    isValid TimeLocale {..} =
        and
            [ isValid wDays
            , isValid months
            , isValid amPm
            , isValid dateTimeFmt
            , isValid dateFmt
            , isValid timeFmt
            , isValid time12Fmt
            , isValid knownTimeZones
            ]
