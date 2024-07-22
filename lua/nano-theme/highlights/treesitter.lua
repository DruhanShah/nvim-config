local M = {}

function M.get (C)
    local colors = {
        ["@variable"] = { fg = C.text },
		["@variable.builtin"] = { link = "@variable" },
		["@variable.parameter"] = { link = "@variable" },
		["@variable.member"] = { link = "@variable" },

        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "Constant" },
        ["@constant.macro"] = { link = "Constant" },

        ["@module"] = { italic = true },
        ["@label"] = { link = "Label" },


        ["@string"] = { link = "String" },
		["@string.documentation"] = { link = "Special" },
		["@string.regexp"] = { link = "String" },
		["@string.escape"] = { link = "Special" },
		["@string.special"] = { link = "Special" },
		["@string.special.path"] = { link = "Special" },
		["@string.special.symbol"] = { link = "Special" },
		["@string.special.url"] = { fg = C.blue, underline = true },

        ["@character"] = { link = "Character" },
        ["@character.special"] = { link = "SpecialChar" },

        ["@boolean"] = { link = "Boolean" },
        ["@number"] = { link = "Number" },
        ["@number.float"] = { link = "Float" },

        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { link = "Type" },
        ["@type.definition"] = { link = "Type" },

        ["@attribute"] = { link = "Constant" },
		["@property"] = { link = "@variable" },

        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { link = "Function" },
        ["@function.call"] = { link = "Function" },
        ["@function.macro"] = { link = "Function" },
        ["@function.method"] = { link = "Function" },
        ["@function.method.call"] = { link = "Function" },

        ["@constructor"] = { link = "Function" },
		["@operator"] = { link = "Operator" },

		["@keyword"] = { link = "Keyword" },
		["@keyword.modifier"] = { link = "Keyword" },
		["@keyword.type"] = { link = "Keyword" },
		["@keyword.coroutine"] = { link = "Keyword" },
		["@keyword.function"] = { link = "Keyword" },
		["@keyword.operator"] = { link = "Operator" },
		["@keyword.import"] = { link = "Include" },
		["@keyword.repeat"] = { link = "Repeat" },
		["@keyword.return"] = { link = "Keyword" },
		["@keyword.debug"] = { link = "Exception" },
		["@keyword.exception"] = { link = "Exception" },
        ["@keyword.conditional"] = { link = "Conditional" },
		["@keyword.conditional.ternary"] = { link = "Operator" },
        ["@keyword.directive"] = { link = "PreProc" },
		["@keyword.directive.define"] = { link = "Define" },
		["@keyword.export"] = { link = "Keyword" },


        ["@punctuation.delimiter"] = { link = "Delimiter" },
		["@punctuation.bracket"] = { link = "Delimiter" },
		["@punctuation.special"] = { link = "Special" },

        ["@comment"] = { link = "Comment" },
		["@comment.documentation"] = { link = "Comment" },
		["@comment.error"] = { fg = C.base, bg = C.red },
		["@comment.warning"] = { fg = C.base, bg = C.yellow },
		["@comment.hint"] = { fg = C.base, bg = C.blue },
		["@comment.todo"] = { fg = C.base, bg = C.flamingo },
		["@comment.note"] = { fg = C.base, bg = C.rosewater },

        ["@markup"] = { fg = C.text },
		["@markup.strong"] = { bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.underline"] = { link = "Underlined" },

		["@markup.heading"] = { bold = true },
        ["@markup.heading.1.markdown"] = { link = "@markup.heading" },
		["@markup.heading.2.markdown"] = { link = "@markup.heading" },
		["@markup.heading.3.markdown"] = { link = "@markup.heading" },
		["@markup.heading.4.markdown"] = { link = "@markup.heading" },
		["@markup.heading.5.markdown"] = { link = "@markup.heading" },
		["@markup.heading.6.markdown"] = { link = "@markup.heading" },

		["@markup.math"] = { fg = C.blue },
		["@markup.quote"] = { fg = C.subtext1, italic = true },
		["@markup.environment"] = { fg = C.pink },
		["@markup.environment.name"] = { fg = C.blue },

		["@markup.link"] = { fg = C.blue, underline = true },
		["@markup.link.label"] = { link = "Label" },
		["@markup.link.url"] = { link = "@markup.link" },

		["@markup.raw"] = { fg = C.subtext0 },

		["@markup.list"] = { link = "Special" },
		["@markup.list.checked"] = { fg = C.green },
		["@markup.list.unchecked"] = { fg = C.overlay1 },

        ["@diff.plus"] = { link = "diffAdded" },
		["@diff.minus"] = { link = "diffRemoved" },
		["@diff.delta"] = { link = "diffChanged" },

        ["@tag"] = { fg = C.mauve },
		["@tag.attribute"] = { fg = C.subtext1, italic = true },
		["@tag.delimiter"] = { fg = C.sky },

        ["@error"] = { link = "Error" },

        ["@function.builtin.bash"] = { fg = C.peach },

        ["@constant.java"] = { fg = C.teal },
        ["@property.css"] = { fg = C.teal },
		["@property.id.css"] = { fg = C.teal },
		["@property.class.css"] = { fg = C.teal },
		["@type.css"] = { bold = true },
		["@type.tag.css"] = { bold = true },
		["@string.plain.css"] = { fg = C.text },
		["@number.css"] = { fg = C.text },
		["@property.toml"] = { bold = true },
		["@label.json"] = { bold = true },
		["@constructor.lua"] = { fg = C.mauve },
		["@property.typescript"] = { fg = C.mauve },
		["@constructor.typescript"] = { link = "Function" },
		["@constructor.tsx"] = { link = "Function" },
		["@tag.attribute.tsx"] = { fg = C.blue },
		["@variable.member.yaml"] = { fg = C.text },
		["@string.special.symbol.ruby"] = { link = "Special" },
		["@function.method.php"] = { link = "Function" },
		["@function.method.call.php"] = { link = "Function" },
		["@type.builtin.c"] = { link = "Type" },
		["@property.cpp"] = { fg = C.text },
		["@type.builtin.cpp"] = { link = "Type" },

		["@comment.warning.gitcommit"] = { fg = C.peach },
		gitcommitSummary = { fg = C.subtext0 },

		zshKSHFunction = { link = "Function" },
    }

	-- Legacy highlights
	colors["@parameter"] = colors["@variable.parameter"]
	colors["@field"] = colors["@variable.member"]
	colors["@namespace"] = colors["@module"]
	colors["@float"] = colors["@number.float"]
	colors["@symbol"] = colors["@string.special.symbol"]
	colors["@string.regex"] = colors["@string.regexp"]

	colors["@text"] = colors["@markup"]
	colors["@text.strong"] = colors["@markup.strong"]
	colors["@text.emphasis"] = colors["@markup.italic"]
	colors["@text.underline"] = colors["@markup.underline"]
	colors["@text.strike"] = colors["@markup.strikethrough"]
	colors["@text.uri"] = colors["@markup.link.url"]
	colors["@text.math"] = colors["@markup.math"]
	colors["@text.environment"] = colors["@markup.environment"]
	colors["@text.environment.name"] = colors["@markup.environment.name"]

	colors["@text.title"] = colors["@markup.heading"]
	colors["@text.literal"] = colors["@markup.raw"]
	colors["@text.reference"] = colors["@markup.link"]

	colors["@text.todo.checked"] = colors["@markup.list.checked"]
	colors["@text.todo.unchecked"] = colors["@markup.list.unchecked"]

	colors["@comment.note"] = colors["@comment.hint"]

	colors["@text.todo"] = colors["@comment.todo"]
	colors["@text.warning"] = colors["@comment.warning"]
	colors["@text.note"] = colors["@comment.note"]
	colors["@text.danger"] = colors["@comment.error"]

	colors["@text.uri"] = colors["@markup.link.uri"]

	colors["@method"] = colors["@function.method"]
	colors["@method.call"] = colors["@function.method.call"]

	colors["@text.diff.add"] = colors["@diff.plus"]
	colors["@text.diff.delete"] = colors["@diff.minus"]

	colors["@type.qualifier"] = colors["@keyword.modifier"]
	colors["@keyword.storage"] = colors["@keyword.modifier"]
	colors["@define"] = colors["@keyword.directive.define"]
	colors["@preproc"] = colors["@keyword.directive"]
	colors["@storageclass"] = colors["@keyword.storage"]
	colors["@conditional"] = colors["@keyword.conditional"]
	colors["@exception"] = colors["@keyword.exception"]
	colors["@include"] = colors["@keyword.import"]
	colors["@repeat"] = colors["@keyword.repeat"]

	colors["@symbol.ruby"] = colors["@string.special.symbol.ruby"]

	colors["@variable.member.yaml"] = colors["@field.yaml"]

	colors["@text.title.1.markdown"] = colors["@markup.heading.1.markdown"]
	colors["@text.title.2.markdown"] = colors["@markup.heading.2.markdown"]
	colors["@text.title.3.markdown"] = colors["@markup.heading.3.markdown"]
	colors["@text.title.4.markdown"] = colors["@markup.heading.4.markdown"]
	colors["@text.title.5.markdown"] = colors["@markup.heading.5.markdown"]
	colors["@text.title.6.markdown"] = colors["@markup.heading.6.markdown"]

	colors["@method.php"] = colors["@function.method.php"]
	colors["@method.call.php"] = colors["@function.method.call.php"]

    return colors
end

return M
