local M = {}

function M.mode_component()
    local mode = vim.api.nvim_get_mode().mode:sub(1, 1)
    local mode_dict = {
        n = "NO",
        v = "VI",
        V = "VL",
        ["\22"] = "VB",
        s = "SE",
        S = "SL",
        ["\19"] = "SB",
        i = "IN",
        R = "RE",
        c = "EX",
        r = "PR",
        ["!"] = "SH",
        t = "TE",
    }

    local hl = "HeaderMode" .. mode_dict[mode]

    return "%#".. hl .."#  ".. mode_dict[mode] .."  "
end

function M.diagnostics_component()
    if vim.startswith(vim.api.nvim_get_mode().mode, "i") then
        return ""
    end

    local names = {
        [1] = "ERROR",
        [2] = "WARN",
        [3] = "HINT",
        [4] = "INFO",
    }
    local icons = {
        ERROR = "",
        WARN = "󱈸",
        HINT = "",
        INFO = "",
    }
    local counts = vim.diagnostic.count(0)
    local strings = vim.iter({1, 2, 3, 4}):map(function (level)
        local count = counts[level]
        if count == 0 or count == nil then
            return nil
        end
        local name = names[level]
        local hl = "Diagnostic" .. name:sub(1, 1) .. name:sub(2):lower()
        return string.format("%%#%s#%s %d", hl, icons[name], count)
    end)

    local final = table.concat { table.concat(strings:totable(), " ") }
    return final .. "   "
end

function M.filetype_component()
    local devicons = require("nvim-web-devicons")

    local special_icons = {}

    local ft = vim.bo.filetype
    local name = vim.fn.expand("%:t")
    local ext = vim.fn.expand("%:e")

    if ft == "" then
        ft = "[No Name]"
    end
    local icon, icon_hl
    if special_icons[ft] then
        icon, icon_hl = special_icons[ft]:unpack()
    else
        icon, icon_hl = devicons.get_icon_color(name, ext)
        if not icon then
            icon, icon_hl = devicons.get_icon_color_by_filetype(ft, { default = true })
        end
    end
    vim.api.nvim_set_hl(0, "HeaderIcon", { fg = icon_hl })

    local modified = vim.bo.modified and " " or ""

    return table.concat {
        string.format("%%#HeaderIcon# %s", icon),
        string.format("%%#HeaderSolid# %s%s", name, modified),
    }
end

function M.position_component()
    return "%#HeaderSimple# %l:%c "
end

function M.winbar()
    if vim.bo.filetype == "query" then
        vim.wo.winbar = "%#HeaderSidebar#%="
    end

    return "%="
end

function M.headerline()
    return table.concat {
        -- M.mode_component(),
        M.filetype_component(),
        "%#HeaderLine#%=",
        M.diagnostics_component(),
        M.position_component(),
    }
end

function M.statusline()
    return "%#StatusLine#%="
end

vim.api.nvim_create_autocmd({ "ModeChanged", "BufEnter", "CursorMoved", "CursorMovedI" }, {
    pattern = "*",
    command = "redrawt",
})

return M
