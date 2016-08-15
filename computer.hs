import Data.Maybe

data Computer = Computer { getSoundcard :: Maybe Soundcard }
data Soundcard = Soundcard { getUSB :: Maybe USB }
data USB = USB { getVersion :: String }

computer = undefined :: Computer

version = fromMaybe "UNKNOWN" (getSoundcard computer >>= getUSB >>= return . getVersion)
