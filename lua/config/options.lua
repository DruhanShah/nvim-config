local options = {
    General = {
        clipboard = "unnamedplus",
        swapfile = false,
        undofile = true,
        virtualedit = "block",
        splitright = true,
        splitbelow = true,
        termguicolors = true,
    },
    ConcealAndFold = {
        foldmethod = "expr",
        foldlevel = 100,
        foldexpr = "v:lua.vim.treesitter.foldexpr()",
        foldtext = 'v:lua.require("config.utils").fold_text()',
        conceallevel = 2,
        concealcursor = "",
    },
    Spelling = {
        spell = false,
        spelllang = "en_us",
    },
    LineNumbers = {
        cursorline = true,
        cursorlineopt = "number",
        signcolumn = "number",
    },
    Indenting = {
        tabstop = 4,
        shiftwidth = 4,
        autoindent = true,
        expandtab = true,
        breakindent = true,
    },
    Statuslines = {
        fillchars = {
            stlnc = "─",
            stl = "─",
            wbr = "─",
            horiz = " ",
            horizup = " ",
            horizdown = " ",
            vert = " ",
            vertleft = " ",
            vertright = " ",
            verthoriz = " ",
            eob = " ",
        },
        laststatus = 3,
        showtabline = 2,
        cmdwinheight = 1,
        cmdheight = 1,
        showmode = false,
        shortmess = "astTWoOCF",

        -- statusline = "%!v:lua.require('config.ui.statusline').statusline()",
        -- tabline = "%!v:lua.require('config.ui.statusline').headerline()",
        -- winbar = "%!v:lua.require('config.ui.statusline').winbar()",
    },
}

for _, section in pairs(options) do
    for k, v in pairs(section) do
        vim.opt[k] = v
    end
end
