module Currency (class Currency, times) where

import Prelude

class Currency a where
    times :: Int -> a -> a
