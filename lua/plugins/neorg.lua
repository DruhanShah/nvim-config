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
        },
        lazy = false,
        opts = require("config.neorg"),
    }
}
