local M = {}

M.defaults = {
    theme = "dark",
    modules = {
        editor = true,
        syntax = true,
        terminal = false,
        treesitter = true,
        telescope = true,
        cmp = true,
        neogit = false,
        mason = true,
        oil = true,
    },
    color_overrides = {},
    custom_highlights = {},
}

M.get_palette = function(theme)
    return require("nano-theme.colors").get(theme, M.defaults)
end

function M.load(theme)
    if theme == "light" or theme == "dark" then
        M.defaults.theme = theme
        local colors = M.get_palette(theme)
        local highlights = require("nano-theme.highlights").get(colors, M.defaults)
        if M.defaults.custom_highlights then
            highlights = vim.tbl_deep_extend("force", highlights, M.defaults.custom_highlights)
        end

        for group, hl in pairs(highlights) do
            vim.api.nvim_set_hl(0, group, hl)
        end
    else
        error("Invalid theme: " .. theme)
    end
end

function M.setup(opts)
    M.defaults = vim.tbl_deep_extend("force", M.defaults, opts)
end

return M
