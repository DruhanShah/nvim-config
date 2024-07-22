local M = {}

function M.get(C)
    return {
        CmpItemAbbr = { fg = C.overlay2 },
		CmpItemAbbrDeprecated = { fg = C.overlay0, strikethrough = true },
		CmpItemKind = { bg = C.surface1, fg = C.blue },
		CmpItemMenu = { fg = C.text },
		CmpItemAbbrMatch = { fg = C.text, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = C.text, bold = true },

		-- kind support
		CmpItemKindSnippet = { fg = C.mauve },
		CmpItemKindKeyword = { fg = C.red },
		CmpItemKindText = { fg = C.teal },
		CmpItemKindMethod = { fg = C.blue },
		CmpItemKindConstructor = { fg = C.blue },
		CmpItemKindFunction = { fg = C.blue },
		CmpItemKindFolder = { fg = C.blue },
		CmpItemKindModule = { fg = C.blue },
		CmpItemKindConstant = { fg = C.peach },
		CmpItemKindField = { fg = C.green },
		CmpItemKindProperty = { fg = C.green },
		CmpItemKindEnum = { fg = C.green },
		CmpItemKindUnit = { fg = C.green },
		CmpItemKindClass = { fg = C.yellow },
		CmpItemKindVariable = { fg = C.flamingo },
		CmpItemKindFile = { fg = C.blue },
		CmpItemKindInterface = { fg = C.yellow },
		CmpItemKindColor = { fg = C.red },
		CmpItemKindReference = { fg = C.red },
		CmpItemKindEnumMember = { fg = C.red },
		CmpItemKindStruct = { fg = C.blue },
		CmpItemKindValue = { fg = C.peach },
		CmpItemKindEvent = { fg = C.blue },
		CmpItemKindOperator = { fg = C.blue },
		CmpItemKindTypeParameter = { fg = C.blue },
		CmpItemKindCopilot = { fg = C.teal },
    }
end

return M
