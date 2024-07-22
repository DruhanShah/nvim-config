local M = {}

function M.get (C)
    return {
        TelescopeMatching = { fg = C.flamingo },
        TelescopeSelection = { fg = C.flamingo, bg = C.surface1, bold = true },
        TelescopeSelectionCaret = { fg = C.surface0, bg = C.surface1 },
        TelescopePromptPrefix = { fg = C.maroon, bg = C.surface1 },
        TelescopePromptNormal = { bg = C.surface1 },
        TelescopeResultsNormal = { bg = C.surface0 },
        TelescopePreviewNormal = { bg = C.surface0 },
        TelescopePromptBorder = { bg = C.surface1, fg = C.surface1 },
        TelescopeResultsBorder = { bg = C.surface0, fg = C.subtext0 },
        TelescopePreviewBorder = { bg = C.surface0, fg = C.surface0 },
        TelescopePromptTitle = { bg = C.blue, fg = C.crust, bold = true },
        TelescopeResultsTitle = { bg = C.red, fg = C.crust, bold = true },
        TelescopePreviewTitle = { bg = C.green, fg = C.crust, bold = true },
    }
end

return M
