-- locals

local gears = require("gears")
local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
local theme = dofile(themes_path.."default/theme.lua")
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

-- fonts
theme.font_name = "CascadiaCode"
theme.font = theme.font_name .. "Regular 16"

-- wallpapers
theme.wallpaper = gears.surface.load_uncached(gfs.get_configuration_dir() .. "~/backgrounds/gamer-girl.png")

-- border radius
theme.border_radius = 12

-- gaps
theme.useless_gap = dpi(4)

return theme