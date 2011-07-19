import XMonad
import XMonad.Config.Gnome
import XMonad.Layout.NoBorders
import qualified XMonad.StackSet as W
import qualified Data.Map as M

myKeys conf@(XConfig {XMonad.modMask = modMask}) = M.fromList $

    -- launch a terminal
    [ ((modMask .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)

    -- launch a web
    , ((modMask,        xK_i),      spawn "firefox")

   -- launch a gtodo
    , ((modMask,        xK_d),      spawn "gtodo")

    -- launch dmenu
--    , ((modMask,      xK_s),      spawn "exe=`dmenu_path | dmenu` && eval \"exec $exe\"")
    , ((modMask,        xK_p),      spawn "exe=`dmenu_path | dmenu -nb '#444444' -nf '#eeeeee' ` && eval \"exec $exe\"")

    -- launch gmrun
    , ((modMask .|. shiftMask,  xK_s),      spawn "gmrun")

    -- launch Video
    , ((modMask,        xK_v),      spawn  "gnome-mplayer")

    -- launch Mail
    , ((modMask,        xK_c),      spawn "claws-mail")

    -- close focused window 
    , ((modMask .|. shiftMask,  xK_c),      kill)

     -- Rotate through the available layout algorithms
    , ((modMask,        xK_space),  sendMessage NextLayout)

    --  Reset the layouts on the current workspace to default
    , ((modMask .|. shiftMask,  xK_space),  setLayout $ XMonad.layoutHook conf)

    -- Resize viewed windows to the correct size
    , ((modMask,        xK_n),      refresh)

    -- Move focus to the next window
    , ((modMask,        xK_j),    windows W.focusDown)

    -- Move focus to the previous window
    , ((modMask.|.shiftMask,    xK_k),    windows W.focusUp)

    -- Move focus to the master window
    , ((modMask,        xK_m),      windows W.focusMaster)

    -- Swap the focused window and the master window
    , ((modMask,    xK_Return), windows W.swapMaster)

    -- Swap the focused window with the next window
    , ((modMask .|. shiftMask, xK_j),       windows W.swapDown)

    -- Swap the focused window with the previous window
    , ((modMask .|. shiftMask, xK_k     ), windows W.swapUp    )

    -- Shrink the master area
    , ((modMask,               xK_h     ), sendMessage Shrink)

    -- Expand the master area
    , ((modMask,               xK_l     ), sendMessage Expand)

    -- Push window back into tiling
    , ((modMask,               xK_t     ), withFocused $ windows . W.sink)

    -- Increment the number of windows in the master area
    , ((modMask              , xK_comma ), sendMessage (IncMasterN 1))

    -- Deincrement the number of windows in the master area
    , ((modMask              , xK_period), sendMessage (IncMasterN (-1)))

    -- toggle the status bar gap
    -- TODO, update this binding with avoidStruts , ((modMask              , xK_b     ),

    -- Restart xmonad
    , ((modMask              , xK_q     ), restart "xmonad" True)
    ]
    ++

    --
    -- mod-[1..9], Switch to workspace N
    -- mod-shift-[1..9], Move client to workspace N
    --
    [((m .|. modMask, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]
    ++

    --
    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3
    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3
    --
    [((m .|. modMask, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]



main = xmonad $ gnomeConfig {
        modMask = mod4Mask
        , layoutHook  = smartBorders (layoutHook gnomeConfig)
        , keys = myKeys
    }

