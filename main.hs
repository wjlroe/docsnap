import Yesod.Default.Config (fromArgs)
import Yesod.Default.Main   (defaultMain)
import Application          (withDocsod)
import Prelude              (IO)

main :: IO ()
main = defaultMain fromArgs withDocsod