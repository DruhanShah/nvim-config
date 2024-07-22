local M = {}

function M.get(C)
    return {
        OilDir = { fg = C.blue, bold = true },
        OilDirIcon = { link = "OilDir" },
        OilSocket = { fg =  C.red, bold = true },
        OilLink = { fg = C.sky },
        OilLinkTarget = { fg =  C.sky, bold = true },
        OilFile = { link = "Text" },
        OilCreate = { fg = C.green },
        OilDelete = { fg = C.red },
        OilMove = { fg = C.peach },
        OilCopy = { fg = C.mauve },
        OilChange = { fg = C.sky },
        OilRestore = { fg = C.green },
        OilPurge = { fg = C.maroon },
        OilTrash = { fg = C.red },
        OilTrashSourcePath = { link = "Text" },
    }
end

return M
