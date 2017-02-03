local function menu(app)
    -- Stuff
    local awesome = app.awesome
    local awful = app.awful
    local terminal = app.terminal

    -- Menu items
    local menu_items = {
        { "Opera", "opera-beta" },
        { "Visual Studio Code", "code --disable-gpu" },
        { "Sakura", "sakura" },
        { "Restart awesome", awesome.restart },
        { "Quit awesome", awesome.quit },
        { "Reboot", "sakura -e reboot" },
        { "Shutdown", "sakura -e shutdown 0" }
    }

    -- Menu
    app.menu = awful.menu({ items = menu_items })
end

return menu
