import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

main :: IO ()
main = xmonad $ def
  {
    terminal = "alacritty",
    modMask = mod4Mask
  }
