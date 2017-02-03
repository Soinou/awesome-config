--[[
$base03:    #002b36;
$base02:    #073642;
$base01:    #586e75;
$base00:    #657b83;
$base0:     #839496;
$base1:     #93a1a1;
$base2:     #eee8d5;
$base3:     #fdf6e3;
$yellow:    #b58900;
$orange:    #cb4b16;
$red:       #dc322f;
$magenta:   #d33682;
$violet:    #6c71c4;
$blue:      #268bd2;
$cyan:      #2aa198;
$green:     #859900;
]]--

-- Directories
local base_directory = "/home/soinou/.config/awesome"
local assets_directory = base_directory .. "/assets"
local layouts_directory = assets_directory .. "/layouts"
local taglist_directory = assets_directory .. "/taglist"

-- Base
local theme = {}

-- Wallpaper
theme.wallpaper = assets_directory .. "/background.jpg"

-- Font
theme.font = "mononoki 12"

theme.bg_normal = "#222222"
theme.bg_focus = "#111111"
theme.bg_urgent = "#d02e54"
theme.bg_minimize = "#444444"

theme.fg_normal = "#ffffff"
theme.fg_focus = "#ffffff"
theme.fg_urgent = "#ffffff"
theme.fg_minimize = "#ffffff"

theme.border_width = "0"
theme.border_normal = "#747474"
theme.border_focus = "#535d6c"
theme.border_marked = "#91231c"

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- Mouse finder
theme.mouse_finder_color = "#CC9393"

-- Menu
theme.menu_height = 15
theme.menu_width  = 200

-- Taglist
theme.taglist_squares_sel   = taglist_directory .. "/squarefw.png"
theme.taglist_squares_unsel = taglist_directory .. "/squarew.png"

-- Layout
theme.layout_tile       = layouts_directory .. "/tile.png"
theme.layout_tileleft   = layouts_directory .. "/tileleft.png"
theme.layout_tilebottom = layouts_directory .. "/tilebottom.png"
theme.layout_tiletop    = layouts_directory .. "/tiletop.png"
theme.layout_fairv      = layouts_directory .. "/fairv.png"
theme.layout_fairh      = layouts_directory .. "/fairh.png"
theme.layout_spiral     = layouts_directory .. "/spiral.png"
theme.layout_dwindle    = layouts_directory .. "/dwindle.png"
theme.layout_max        = layouts_directory .. "/max.png"
theme.layout_fullscreen = layouts_directory .. "/fullscreen.png"
theme.layout_magnifier  = layouts_directory .. "/magnifier.png"
theme.layout_floating   = layouts_directory .. "/floating.png"

--[[ Titlebar
theme.titlebar_bg_focus = "#3F3F3F"
theme.titlebar_bg_normal = "#3F3F3F"

theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/zenburn/titlebar/close_focus.png"
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/zenburn/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = "/usr/share/awesome/themes/zenburn/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/zenburn/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = "/usr/share/awesome/themes/zenburn/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/zenburn/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = "/usr/share/awesome/themes/zenburn/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/zenburn/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = "/usr/share/awesome/themes/zenburn/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/zenburn/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = "/usr/share/awesome/themes/zenburn/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/zenburn/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = "/usr/share/awesome/themes/zenburn/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/zenburn/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = "/usr/share/awesome/themes/zenburn/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/zenburn/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/zenburn/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/zenburn/titlebar/maximized_normal_inactive.png"

--]]

return theme
