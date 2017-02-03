local function cpu(app)
    local awful = app.awful
    local vicious = app.vicious
    local wibox = app.wibox

    local cpuwidget = wibox.widget.graph()

    cpuwidget:set_width(50)
    cpuwidget:set_background_color("#222222")
    cpuwidget:set_color({
        type = "linear",
        from = { 0, 0 },
        to = { 50, 0 },
        stops = {
            { 0, "#268bd2" },
            { 0.5, "#6c71c4" },
            { 1, "#dc322f" },
        },
    })

    vicious.register(cpuwidget, vicious.widgets.cpu, "$1", 1)

    return cpuwidget
end

return cpu
