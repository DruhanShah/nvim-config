return {
    {
        "catppuccin/nvim",
        enabled = false,
        name = "catppuccin",
        priority = 1000,
        opts = {
            integrations = {
                mason = true,
            },
            custom_highlights = require("config.ui.highlights").highlight,
            color_overrides = require("config.ui.highlights").overrides,
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme "catppuccin-mocha"
            _G.theme = "mocha"
        end,
    },
    {
        dir = "~/Stuff/Lua-fu/elegance",
        name = "elegance",
        opts = {
            theme = "dark",
        },
        config = function(_, opts)
            require("elegance").setup(opts)
            -- vim.cmd.colorscheme "elegance"
        end
    },
}
