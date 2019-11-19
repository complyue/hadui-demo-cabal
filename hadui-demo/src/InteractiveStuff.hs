
-- See: https://github.com/haskell/cabal/issues/5374
-- > `cabal new-repl` only brings one module into scope
-- 
-- so you have to create this module, and make sure it
-- appears as the first module in `exposed-modules:` 
-- within your .cabal file. 

module InteractiveStuff
    ( module RoadWarrior
    , module Rating
    , module StatefulRating
    )
where

import           RoadWarrior
import           Rating
import           StatefulRating

