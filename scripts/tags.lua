local function load_tags(app)
    local awful = app.awful
    local layouts = app.layouts
    local tags = {
        "➊",
        "➋",
        "➌",
        "➍",
        "➎",
    }

    local tag_list = {}
    for s = 1, screen.count() do
        tag_list[s] = awful.tag(tags, s, layouts[1])
    end
end

return load_tags
