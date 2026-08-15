---------------------
---- KEYBINDINGS ----
---------------------

local programs = require("config.programs")

local mainMod = "SUPER"

-- Applications
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(programs.terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(programs.filemanager))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd(programs.menu))

-- Window management
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

-- Exit / shutdown
hl.bind(
    mainMod .. " + M",
    hl.dsp.exec_cmd(
        "command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"
    )
)

-- Focus
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Workspaces
for i = 1, 10 do
    local key = i % 10

    hl.bind(
        mainMod .. " + " .. key,
        hl.dsp.focus({ workspace = i })
    )

    hl.bind(
        mainMod .. " + SHIFT + " .. key,
        hl.dsp.window.move({ workspace = i })
    )
end

-- Special workspace
hl.bind(
    mainMod .. " + S",
    hl.dsp.workspace.toggle_special("magic")
)

hl.bind(
    mainMod .. " + SHIFT + S",
    hl.dsp.window.move({ workspace = "special:magic" })
)

-- Workspace scrolling
hl.bind(
    mainMod .. " + mouse_down",
    hl.dsp.focus({ workspace = "e+1" })
)

hl.bind(
    mainMod .. " + mouse_up",
    hl.dsp.focus({ workspace = "e-1" })
)

-- Mouse window controls
hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag(),
    { mouse = true }
)

hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.resize(),
    { mouse = true }
)

-- Volume
hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("~/.local/bin/volume.sh up"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd("~/.local/bin/volume.sh down"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd("~/.local/bin/volume.sh toggle"),
    { locked = true }
)

hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true }
)
-- Brightness
hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd("~/.local/bin/brightness.sh up"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd("~/.local/bin/brightness.sh down"),
    { locked = true, repeating = true }
)
-- Media
hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next"),
    { locked = true }
)

hl.bind(
    "XF86AudioPause",
    hl.dsp.exec_cmd("playerctl play-pause"),
    { locked = true }
)

hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause"),
    { locked = true }
)

hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous"),
    { locked = true }
)




-- Screenshots
hl.bind(
    mainMod .. " + SHIFT + P",
    hl.dsp.exec_cmd("~/.local/bin/screenshot.sh")
)

hl.bind(
    mainMod .. " + SHIFT + X",
    hl.dsp.exec_cmd("~/.local/bin/screenshot-region.sh")
)



----------------------------------------------------------
-- Wallpaper Changer Rofi ---- Random Wallpaper Changer --
-- -------------------------------------------------------
--
hl.bind(
    mainMod .. " + SHIFT + W",
    hl.dsp.exec_cmd("~/.local/bin/rofi-wallpaper")
)

-- 
hl.bind(
    mainMod .. " + SHIFT + R",
    hl.dsp.exec_cmd("~/.local/bin/random-wallpaper.sh")
)
