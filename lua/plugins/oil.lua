return {
    "stevearc/oil.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        default_file_explorer = true,
        columns = { "icon", "permissions" },
        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,
        keymaps = {
            ["<C-h>"] = "",
            ["<C-l>"] = "",
        },
    },
    init = function ()
        vim.keymap.set("n", "<leader>o", function () require("oil").open() end)
    end
}
