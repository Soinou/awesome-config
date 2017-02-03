local function config(app)
    local awful = app.awful

    app.editor = "vim"
    app.editor_cmd = "sakura -e vim"
    app.modkey = "Mod4"
    app.terminal = "sakura"
    app.layouts = {
        awful.layout.suit.max,
        awful.layout.suit.tile,
        awful.layout.suit.max.fullscreen
    }
end

return config
