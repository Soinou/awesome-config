local function cpu(app)
    local awful = app.awful
    local gears = app.gears
    local lain = app.lain
    local theme = app.theme
    local vicious = app.vicious
    local wibox = app.wibox

    local markup = lain.util.markup
    local space3 = markup.font("Roboto 3", " ")


    local cpu = lain.widget.cpu({
        timeout = 1,
        settings = function()
            widget:set_markup(markup.font("Segoe UI", "CPU " .. cpu_now.usage .. "% "))
        end
    })

    local cpuwidget = wibox.widget.graph()

    cpuwidget:set_width(50)
    cpuwidget:set_background_color("#1e1e1e")
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

    return cpu.widget
end

return cpu
