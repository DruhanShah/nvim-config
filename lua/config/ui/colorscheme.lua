local palette = require("catppuccin.palettes").get_palette("mocha")

local dark_rep = {
    text = "#cdd6f4",
    subtext1 = "#bac2de",
    subtext0 = "#a6adc8",
    overlay1 = "#7f849c",
    overlay0 = "#6c7086",
    surface1 = "#45475a",
    surface0 = "#313244",
    base = "#1e1e2e",
    mantle = "#181825",
    crust = "#11111b",

    pink = "#f5c2e7",
    mauve = "#cba6f7",
    red = "#f37b88",
    maroon = "#db909c",
    peach = "#fab387",
    yellow = "#f9e2af",
    green = "#a6e3a1",
    teal = "#94e2d5",
    sky = "#80cafb",
    blue = "#89a4fa",
    lavender = "#b4befe",
}
local light_rep = {
    text = "#1e1e2f",
    subtext1 = "#3c3f57",
    subtext0 = "#5c5f75",
    overlay1 = "#8c8fa1",
    overlay0 = "#acb0be",
    surface1 = "#bcc0cc",
    surface0 = "#ccd0da",
    base = "#eff1f5",
    mantle = "#e6e9ef",
    crust = "#dce0e8",

    pink = "#da56ab",
    mauve = "#7809af",
    red = "#c20f19",
    maroon = "#a64553",
    peach = "#ee6419",
    yellow = "#df8e1d",
    green = "#40902b",
    teal = "#209fb5",
    sky = "#0495e5",
    blue = "#0046a9",
    lavender = "#6257bd",
}

if palette.base == "#1e1e2f" then
    palette = vim.tbl_deep_extend("force", palette, dark_rep)
else
    palette = vim.tbl_deep_extend("force", palette, light_rep)
end

return palette

