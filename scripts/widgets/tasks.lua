local function tasks(app)
    local awful = app.awful

    function toggle(c)
        if c == client.focus then
            c.minimized = true
        else
            c.minimized = false
            if not c:isvisible() then
                awful.tag.viewonly(c:tags()[1])
            end
            client.focus = c
            c:raise()
        end
    end

    function hide()
        if instance then
            instance:hide()
            instance = nil
        else
            instance = awful.menu.clients({
                theme = { width = 250 }
            })
        end
    end

    function focus_next()
        awful.client.focus.byidx(1)
        if client.focus then client.focus:raise() end
    end

    function focus_previous()
        awful.client.focus.byidx(-1)
        if client.focus then client.focus:raise() end
    end

    return awful.util.table.join(
        awful.button({ }, 1, toggle),
        awful.button({ }, 3, hide),
        awful.button({ }, 4, focus_next),
        awful.button({ }, 5, focus_previous)
    )
end

return tasks
