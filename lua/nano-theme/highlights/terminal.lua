local M = {}

function M.get (C)
    return {
        terminal_color_0 = C.surface0,
		terminal_color_8 = C.overlay0,

		terminal_color_1 = C.maroon,
		terminal_color_9 = C.red,

		terminal_color_2 = C.green,
		terminal_color_10 = C.green,

		terminal_color_3 = C.yellow,
		terminal_color_11 = C.yellow,

		terminal_color_4 = C.blue,
		terminal_color_12 = C.blue,

		terminal_color_5 = C.mauve,
		terminal_color_13 = C.pink,

		terminal_color_6 = C.sky,
		terminal_color_14 = C.sky,

		terminal_color_7 = C.subtext1,
		terminal_color_15 = C.text,
    }
end

return M
