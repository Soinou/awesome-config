local function cpu(app)
    local awful = app.awful
    local vicious = app.vicious
    local wibox = app.wibox

    local memwidget = wibox.widget.textbox()

    vicious.cache(vicious.widgets.mem)

    vicious.register(memwidget, vicious.widgets.mem, " Memory: $2MB/$3MB ", 13)

    return memwidget
end

return cpu
