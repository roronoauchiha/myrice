-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("waybar >/dev/null 2>&1 &")
    hl.exec_cmd("nm-applet &")
end)
