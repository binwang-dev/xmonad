import XMonad

import XMonad.Hooks.EwmhDesktops
import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

main :: IO ()
main = xmonad $ ewmh def
  {
    terminal = "alacritty",
    modMask = mod4Mask
  }
 `additionalKeysP`
  [
    ("M-p", spawn "rofi -show drun")
  , ("M1-<Tab>", spawn "rofi -show window")
  ]
