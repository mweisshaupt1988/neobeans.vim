local M = {}

function M.get_dark_colors()
  return {
    comment = "#cccccc",
    background = "#2b2b2b",
    foreground = "#ffffff",
    cursorline = "#4d4d4d",
    cursor = "#1abc9c",

    bracket = "#b3b9b8",
    black = "#000000",
    line = "#4d4d4d",
    selection = "#255ca9",
    red = "#841515",
    red_dark = "#590e0e";
    red_light = "#b34747",
    orange = "#f5aa1f",
    orange_light = "#d06403",
    orange_dark = "#827f00",
    yellow = "#ffff00",
    yellow_light = "#588500",
    green = "#1abc9c",
    green_dark = "#0b4d3f",
    aqua = "#628fb5",
    blue = "#00aae6",
    blue_dark = "#005e80",
    blue_light = "#00aae6",
    purple = "#8959a8",
    purple_dark = "#513666",
    window = "#565656",
    ruler = "#363636",
    darkgrey = "#e2e2e2",
    transparent = "NONE",

    -- TODO: Remove
    contrast = "#161d1f",
    color0 = "#232a2d",
    color1 = "#e57474",
    color2 = "#8ccf7e",
    color3 = "#e5c76b",
    color4 = "#67b0e8",
    color5 = "#c47fd5",
    color6 = "#6cbfbf",
    color7 = "#b3b9b8",
    color8 = "#3b4244",
    color9 = "#ef7d7d",
    color10 = "#6bc568",
    color11 = "#f4d67a",
    color12 = "#71baf2",
    color13 = "#ce89df",
    color14 = "#67cbe7",
    color15 = "#bdc3c2",
  }
end

function M.get_light_colors()
  return {
    comment = "#969696",
    background = "#ffffff",
    foreground = "#000000",
    cursorline = "#e9eff8",
    cursor = "#1abc9c",

    bracket = "#444444",
    black = "#000000",
    line = "#4d4d4d",
    selection = "#b0c5e3",
    red = "#841515",
    -- red_dark = "#590e0e";
    red_dark = "#b34747",
    red_light = "#b34747",
    orange = "#f5871f",
    orange_light = "#d06403",
    orange_dark = "#827f00",
    -- yellow = "#ffff00",
    yellow = "#dfdf00",
    yellow_light = "#588500",
    green = "#0e6755",
    greenalt = "#117d67",
    green_dark = "#0b4d3f", -- TODO
    aqua = "#628fb5",
    -- blue = "#5675fc",
    blue = "#3563da",
    blue_dark = "#005e80", -- TODO
    blue_light = "#00aae6",
    purple = "#8959a8",
    purple_dark = "#513666",
    window = "#bfbeba",
    ruler = "#e9e8e2",
    darkgrey = "#444444",
    transparent = "NONE",

    -- TODO: Remove
    contrast = "#161d1f",
    color0 = "#232a2d",
    color1 = "#e57474",
    color2 = "#8ccf7e",
    color3 = "#e5c76b",
    color4 = "#67b0e8",
    color5 = "#c47fd5",
    color6 = "#6cbfbf",
    color7 = "#b3b9b8",
    color8 = "#3b4244",
    color9 = "#ef7d7d",
    color10 = "#6bc568",
    color11 = "#f4d67a",
    color12 = "#71baf2",
    color13 = "#ce89df",
    color14 = "#67cbe7",
    color15 = "#bdc3c2",
  }
end

return M
