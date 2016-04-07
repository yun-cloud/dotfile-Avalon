import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Paste
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ def
        { modMask    = mod4Mask     -- Rebined Mod key to the Windows key
        , layoutHook = avoidStruts $ layoutHook def
        , manageHook = manageHook def <+> manageDocks 
        , handleEventHook = mconcat
                            [ docksEventHook
                            , handleEventHook def
                            ]
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrrot -s")
        , ((0, xK_Print), spawn "scrot")
        , ((0, xK_Insert), pasteSelection) 
        ]

