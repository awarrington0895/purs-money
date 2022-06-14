module Currency.Franc (from, Franc) where

import Prelude
import Currency (class Currency)

newtype Franc = Franc Int

derive newtype instance eqFranc :: Eq Franc

derive newtype instance showFranc :: Show Franc

instance Currency Franc where
    times x (Franc y) = Franc (x * y)

from :: Int -> Franc
from x = Franc x
