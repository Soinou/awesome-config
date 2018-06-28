-- Load a widget
function load_widget(app, name)
    local widget = require("scripts.widgets." .. name)
    return widget(app)
end

return function(app)
    -- Stuff
    local awful = app.awful
    local beautiful = app.beautiful
    local terminal = app.terminal
    local wibox = app.wibox
    local menubar = app.menubar

    -- Menu items
    local menu_items = {
        { "Opera", "opera-beta" },
        { "Visual Studio Code", "code" },
        { "Sakura", "sakura" },
        { "Restart awesome", awesome.restart },
        { "Quit awesome", awesome.quit },
        { "Reboot", terminal .. " -e reboot" },
        { "Shutdown", terminal .. " -e shutdown 0" }
    }

    -- Menu
    local main_menu = awful.menu({ items = menu_items })

    -- Menu launcher
    local launcher = awful.widget.launcher({
        image = beautiful.awesome_icon,
        menu = main_menu
    })

    -- Config
    menubar.utils.terminal = terminal

    -- Task bar
    local task_bar = {}

    -- Widgets
    local clock = load_widget(app, "clock")
    local tags = load_widget(app, "tags")
    local tasks = load_widget(app, "tasks")

    -- Boxes
    local layout_box = {}
    local prompt_box = {}
    local tag_box = {}
    local task_box = {}

    for s = 1, screen.count() do
        -- Prompt box
        prompt_box[s] = awful.widget.prompt()

        -- Layout box
        layout_box[s] = awful.widget.layoutbox(s)
        layout_box[s]:buttons(awful.util.table.join(
            awful.button({ }, 1, function () awful.layout.inc(1) end),
            awful.button({ }, 3, function () awful.layout.inc(-1) end),
            awful.button({ }, 4, function () awful.layout.inc(1) end),
            awful.button({ }, 5, function () awful.layout.inc(-1) end)
        ))

        -- Tag box
        tag_box[s] = awful.widget.taglist(s, awful.widget.taglist.filter.all, tags)

        -- Task box
        task_box[s] = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, tasks)

        -- Task bar
        task_bar[s] = awful.wibox({
            position = "bottom",
            height = 26,
            screen = s
        })

        -- Left widgets
        local left = wibox.layout.fixed.horizontal()
        left:add(launcher)
        left:add(tag_box[s])
        left:add(prompt_box[s])

        -- Right widgets
        local right = wibox.layout.fixed.horizontal()
        if s == 1 then right:add(wibox.widget.systray()) end
        right:add(clock)
        right:add(layout_box[s])

        -- Layout
        local layout = wibox.layout.align.horizontal()
        layout:set_left(left)
        layout:set_middle(task_box[s])
        layout:set_right(right)

        task_bar[s]:set_widget(layout)
    end
end

