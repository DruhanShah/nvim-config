return {
    {
        "3rd/image.nvim",
        dependencies = {
            "leafo/magick",
        },
        opts = {},
    },
    {
        "nvim-neorg/neorg",
        dependencies = {
            { dir = "~/Stuff/Lua-fu/elegance", name = "elegance", priority = 1000, },
            "benlubas/neorg-conceal-wrap",
            { "pysan3/neorg-templates", dependencies = { "L3MON4D3/LuaSnip" } },
            { "3rd/image.nvim" }
        },
        opts = require("config.neorg"),
    }
}
