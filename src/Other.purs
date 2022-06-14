module Other (Money, times, dollar, franc, plus) where

import Prelude

data Money = Money Int String

derive instance eqMoney :: Eq Money

instance Show Money where
    show (Money amount currency) = show amount <> " " <> currency

times :: Int -> Money -> Money
times x (Money y currency) = Money (x * y) currency

dollar :: Int -> Money
dollar amount = Money amount "USD"

franc :: Int -> Money
franc amount = Money amount "CHF"

plus :: Money -> Money -> Money
plus (Money augend currency) (Money addend _) = Money (augend + addend) currency

