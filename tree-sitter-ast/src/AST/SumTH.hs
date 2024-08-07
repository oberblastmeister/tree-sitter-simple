{-# LANGUAGE TemplateHaskellQuotes #-}

module AST.SumTH
  ( x1,
    x2,
    x3,
    x4,
    x5,
    x6,
    x7,
    x8,
    x9,
    rest1,
    rest2,
    rest3,
    rest4,
    rest5,
    rest6,
    rest7,
    rest8,
    rest9,
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

x1 :: TH.QuasiQuoter
x1 = patQuote $ \name -> [p|X $(TH.varP (TH.mkName name))|]

x2 :: TH.QuasiQuoter
x2 = patQuote $ \name -> [p|Rest (X $(TH.varP (TH.mkName name)))|]

x3 :: TH.QuasiQuoter
x3 = patQuote $ \name -> [p|Rest (Rest (X $(TH.varP (TH.mkName name))))|]

x4 :: TH.QuasiQuoter
x4 = patQuote $ \name -> [p|Rest (Rest (Rest (X $(TH.varP (TH.mkName name)))))|]

x5 :: TH.QuasiQuoter
x5 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (X $(TH.varP (TH.mkName name))))))|]

x6 :: TH.QuasiQuoter
x6 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest (X $(TH.varP (TH.mkName name)))))))|]

x7 :: TH.QuasiQuoter
x7 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest (Rest (X $(TH.varP (TH.mkName name))))))))|]

x8 :: TH.QuasiQuoter
x8 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest (Rest (Rest (X $(TH.varP (TH.mkName name)))))))))|]

x9 :: TH.QuasiQuoter
x9 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest (Rest (Rest (Rest (X $(TH.varP (TH.mkName name))))))))))|]

rest1 :: TH.QuasiQuoter
rest1 = patQuote $ \name -> [p|Rest $(TH.varP (TH.mkName name))|]

rest2 :: TH.QuasiQuoter
rest2 = patQuote $ \name -> [p|Rest (Rest $(TH.varP (TH.mkName name)))|]

rest3 :: TH.QuasiQuoter
rest3 = patQuote $ \name -> [p|Rest (Rest (Rest $(TH.varP (TH.mkName name))))|]

rest4 :: TH.QuasiQuoter
rest4 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest $(TH.varP (TH.mkName name)))))|]

rest5 :: TH.QuasiQuoter
rest5 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest $(TH.varP (TH.mkName name))))))|]

rest6 :: TH.QuasiQuoter
rest6 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest (Rest $(TH.varP (TH.mkName name)))))))|]

rest7 :: TH.QuasiQuoter
rest7 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest (Rest (Rest $(TH.varP (TH.mkName name))))))))|]

rest8 :: TH.QuasiQuoter
rest8 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest (Rest (Rest (Rest $(TH.varP (TH.mkName name)))))))))|]

rest9 :: TH.QuasiQuoter
rest9 = patQuote $ \name -> [p|Rest (Rest (Rest (Rest (Rest (Rest (Rest (Rest (Rest $(TH.varP (TH.mkName name))))))))))|]
