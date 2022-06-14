module Currency.Dollar (from, Dollar) where

import Prelude

import Currency (class Currency)

newtype Dollar = Dollar Int

derive newtype instance eqDollar :: Eq Dollar

derive newtype instance showDollar :: Show Dollar

instance Currency Dollar where
    times x (Dollar y) = Dollar (x * y)

from :: Int -> Dollar
from x = Dollar x
