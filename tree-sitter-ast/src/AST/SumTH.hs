{-# LANGUAGE TemplateHaskellQuotes #-}

module AST.SumTH
  ( sum1,
    sum2,
    sum3,
    sum4,
    sum5,
    sum6,
    sum7,
    sum8,
    sum9,
  )
where

import AST.Sum
import Language.Haskell.TH (Q)
import Language.Haskell.TH qualified as TH
import Language.Haskell.TH.Quote qualified as TH

patQuote :: (String -> Q TH.Pat) -> TH.QuasiQuoter
patQuote f =
  TH.QuasiQuoter
    { TH.quotePat = f,
      TH.quoteType = error "quoteType",
      TH.quoteDec = error "quoteDec",
      TH.quoteExp = error "quoteExp"
    }

sum1 :: TH.QuasiQuoter
sum1 = patQuote $ \name -> [p|X $(TH.varP (TH.mkName name))|]

sum2 :: TH.QuasiQuoter
sum2 = patQuote $ \name -> [p|Rest (X $(TH.varP (TH.mkName name)))|]

sum3 :: TH.QuasiQuoter
sum3 = patQuote $ \name -> [p|Rest (Rest (X $(TH.varP (TH.mkName name))))|]

sum4 :: TH.QuasiQuoter
sum4 = patQuote $ \name -> [p|Rest (Rest (Rest (X $(TH.varP (TH.mkName name)))))|]

sum5 :: TH.QuasiQuoter
sum5 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (X $(TH.varP (TH.mkName name))))))|]

sum6 :: TH.QuasiQuoter
sum6 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest (X $(TH.varP (TH.mkName name)))))))|]

sum7 :: TH.QuasiQuoter
sum7 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest (Rest (X $(TH.varP (TH.mkName name))))))))|]

sum8 :: TH.QuasiQuoter
sum8 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest (Rest (Rest (X $(TH.varP (TH.mkName name)))))))))|]

sum9 :: TH.QuasiQuoter
sum9 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest (Rest (Rest (Rest (X $(TH.varP (TH.mkName name))))))))))|]
