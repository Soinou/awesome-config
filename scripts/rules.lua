local function load_rules(app)
    local awful = app.awful
    local beautiful = app.beautiful
    local clientbuttons = app.clientbuttons
    local clientkeys = app.clientkeys
    local tag_list = app.tag_list

    awful.rules.rules = {
        -- All clients will match this rule.
        {
            rule = { },
            properties = {
                border_width = beautiful.border_width,
                border_color = beautiful.border_normal,
                focus = awful.client.focus.filter,
                raise = true,
                keys = clientkeys,
                buttons = clientbuttons,
                screen = awful.screen.preferred,
                placement = awful.placement.no_overlap+awful.placement.no_offscreen
            }
        },
        {
            rule = {
                class = "Code"
            },
            properties = {
                tag = tag_list[1][1]
            }
        }
    }
end

return load_rules
