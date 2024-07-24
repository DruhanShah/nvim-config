return {
    {
        "3rd/image.nvim",
        dependencies = {
            "leafo/magick",
        },
        config = true,
    },
    {
        "nvim-neorg/neorg",
        dependencies = {
            "benlubas/neorg-conceal-wrap",
            { "pysan3/neorg-templates", dependencies = { "L3MON4D3/LuaSnip" } },
        },
        lazy = false,
        opts = require("config.neorg"),
    }
}
