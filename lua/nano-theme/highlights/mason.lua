local M = {}

function M.get(C)
    return {
        MasonHeader = { fg = C.base, bg = C.overlay0, bold = true },
        MasonHeaderSecondary = { fg = C.base, bg = C.blue, bold = true },

        MasonHighlight = { fg = C.green },
        MasonHighlightBlock = { bg = C.green, fg = C.base },
        MasonHighlightBlockBold = { bg = C.blue, fg = C.base, bold = true },

        MasonHighlightSecondary = { fg = C.mauve },
        MasonHighlightBlockSecondary = { fg = C.base, bg = C.blue },
        MasonHighlightBlockBoldSecondary = { fg = C.base, bg = C.subtext1, bold = true },

        MasonMuted = { fg = C.overlay0 },
        MasonMutedBlock = { bg = C.overlay0, fg = C.base },
        MasonMutedBlockBold = { bg = C.yellow, fg = C.base, bold = true },

        MasonError = { fg = C.red },

        MasonHeading = { fg = C.lavender, bold = true },
    }
end

return M
