import XMonad

import XMonad.Hooks.EwmhDesktops
import XMonad.Layout.PerScreen
import XMonad.Layout.Spacing
import XMonad.Layout.ThreeColumns
import XMonad.Util.EZConfig
import XMonad.Util.SpawnOnce
import XMonad.Util.Ungrab

primaryLayout = Tall 1 (3/100) (618/1000) ||| Full ||| ThreeColMid 1 (3/100) (1/2)
secondaryLayout = Mirror (Tall 1 (3/100) (1/2)) ||| Full ||| Mirror (ThreeColMid 1 (3/100) (1/2))

main :: IO ()
main = xmonad $ ewmh def
  {
    layoutHook = smartSpacing 5 $ (ifWider 1440 primaryLayout secondaryLayout)
  , modMask = mod4Mask
  , startupHook = spawnOnce "~/.config/xmonad/startup.sh &"
  , terminal = "alacritty"
  }
 `additionalKeysP`
  [
    ("M-p", spawn "rofi -show drun")
  , ("M1-<Tab>", spawn "rofi -show window")
  ]
