vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd.colorscheme "nano-light"

require("config.options")
require("config.mappings")

local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        "git",
	    "clone",
	    "--filter=blob:none",
	    "https://github.com/folke/lazy.nvim",
	    "--branch=stable",
	    lazypath
    }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
    change_detection = {
        notify = false,
    },
    ui = {
        backdrop = 100,
        icons = {
            cmd = " ",
            config = "",
            event = " ",
            ft = " ",
            init = " ",
            import = " ",
            keys = " ",
            lazy = "󰒲 ",
            loaded = " ",
            not_loaded = " ",
            plugin = " ",
            runtime = " ",
            require = "󰢱 ",
            source = " ",
            start = " ",
            task = "✔ ",
            list = {
                "●",
                "➜",
                "★",
                "‒",
            },
        },
    },
})

require("config.ui.dashboard")
require("config.ui.sidebar")
require("config.ui.statusline")

vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    command = "colorscheme nano-light"
})
