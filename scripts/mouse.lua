return function(app)
    local awful = app.awful
    local menu = app.menu
    local root = app.root

    -- Mouse bindings
    app.mouse = awful.util.table.join(
        awful.button({ }, 3, function () menu:toggle() end),
        awful.button({ }, 4, awful.tag.viewnext),
        awful.button({ }, 5, awful.tag.viewprev)
    )
end

