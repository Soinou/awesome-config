-- Dependencies and stuff
local gears = require("gears")
local awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
local wibox = require("wibox")
local beautiful = require("beautiful")
local naughty = require("naughty")
local menubar = require("menubar")
local lain = require("lain")

-- App
local app = {
    awesome = awesome,
    awful = awful,
    beautiful = beautiful,
    gears = gears,
    lain = lain,
    menubar = menubar,
    naughty = naughty,
    wibox = wibox,
}

-- Home directory
local home = "/home/soinou/.config/awesome"
local scripts = home .. "/scripts"

-- Load theme
beautiful.init(scripts .. "/theme.lua")

-- Wallpaper
if beautiful.wallpaper then
    for s = 1, screen.count() do
        gears.wallpaper.maximized(beautiful.wallpaper, s, true)
    end
end

-- Scripts
local load_config = require("scripts.config")
local load_errors = require("scripts.errors")
local load_keys = require("scripts.keys")
local load_menu = require("scripts.menu")
local load_mouse = require("scripts.mouse")
local load_tags = require("scripts.tags")
local load_rules = require("scripts.rules")
local load_task_bar = require("scripts.wibox")

-- Load scripts
load_errors(app)
load_config(app)
load_tags(app)
load_rules(app)
load_menu(app)
load_task_bar(app)
load_mouse(app)
load_keys(app)

-- Mouse buttons
root.buttons(app.mouse)
root.keys(app.keys)
