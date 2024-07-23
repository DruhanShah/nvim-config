local M = {}

local function light_mode(C)
    return C.base == "#eff1f5"
end

function M.get (C)
    return {
        Comment = { link = "NonText" },
        SpecialComment = { link = "Special" },
        Constant = { fg = C.mauve },
        String = { link = "Text" },
        Character = { link = "String" },
        Number = { link = "Text" },
        Float = { link = "Number" },
        Boolean = { fg = C.peach },
        Identifier = { link = "Text" },
        Function = { link = "Text" },
        Statement = { link = "Keyword" },
        Conditional = { link = "Keyword" },
        Repeat = { link = "Keyword" },
        Operator = { link = "Text" },
        Keyword = { bold = true, fg = C.blue },
        Exception = { link = "Keyword" },

        PreProc = { link = "Keyword" },
        Include = { link = "PreProc" },
        Define = { link = "PreProc" },
        Macro = { link = "Define" },
        PreCondit = { link = "PreProc" },

        StorageClass = { italic = true },
        Structure = { italic = true },
        Special = { fg = C.blue },
        Type = { bold = true },
        Typedef = { link = "Type" },
        SpecialChar = { link = "Special" },
        Tag = { fg = C.lavender, bold = true },
        Delimiter = { link = "NonText" },
        Debug = { link = "Special" },

        Underlined = { underline = true },
        Bold = { bold = true },
        Italic = { italic = true },

        Error = { fg = C.red },
        Todo = { bold = true, underline = true },
        qfLineNr = { fg = C.subtext0 },
        qfFileName = { fg = C.subtext1, bold = true },
        htmlH1 = { bold = true },
        htmlH2 = { bold = true },

        mkdHeading = { link = "Bold" },
        mkdCodeDelimiter = { link = "NonText" },
        mkdCodeStart = { link = "Bold" },
        mkdCodeEnd = { link = "Bold" },
        mkdLink = { fg = C.blue, underline = true },

        debugPC = { bg = C.crust },
        debugBreakpoint = { bg = C.base, fg = C.overlay0 },
        healthError = { fg = C.red },
        healthSuccess = { fg = C.teal },
        healthWarning = { fg = C.yellow },

        rainbow1 = { fg = C.red },
        rainbow2 = { fg = C.peach },
        rainbow3 = { fg = C.yellow },
        rainbow4 = { fg = C.green },
        rainbow5 = { fg = C.sapphire },
        rainbow6 = { fg = C.lavender },

        csvCol0 = { fg = C.red },
        csvCol1 = { fg = C.peach },
        csvCol2 = { fg = C.yellow },
        csvCol3 = { fg = C.green },
        csvCol4 = { fg = C.sky },
        csvCol5 = { fg = C.blue },
        csvCol6 = { fg = C.lavender },
        csvCol7 = { fg = C.mauve },
        csvCol8 = { fg = C.pink },

        illuminatedWord = { bg = C.surface1 },
        illuminatedCurWord = { bg = C.surface1 },

        diffAdded = { fg = C.green },
        diffRemoved = { fg = C.red },
        diffChanged = { fg = C.blue },
        diffOldFile = { fg = C.yellow },
        diffNewFile = { fg = C.peach },
        diffFile = { fg = C.blue },
        diffLine = { fg = C.overlay0 },
        diffIndexLine = { fg = C.teal },
        DiffAdd = { bg = light_mode(C) and "#b6efca" or "#364144" },
        DiffChange = { bg = light_mode(C) and "#c5d9fd" or "#25293d" },
        DiffDelete = { bg = light_mode(C) and "#e4b2b5" or "#443245" },
        DiffText = { bg = light_mode(C) and "#dedbec" or "#3e4b6c" },
    }
end

return M
