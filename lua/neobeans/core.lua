local M = {}

function M.get_dark_colors()
  return {
    comment = "#969696",
    background = "#2b2b2b",
    foreground = "#ffffff",
    cursorline = "#4d4d4d",
    cursor = "#1abc9c",
    bracket = "#b3b9b8",
    black = "#000000",
    line = "#4d4d4d",
    literal = "#f4d67a",
    selection = "#255ca9",
    red = "#841515",
    red_dark = "#590e0e";
    red_light = "#b34747",
    orange = "#f5aa1f",
    orange_light = "#d06403",
    orange_dark = "#827f00",
    yellow = "#ffff00",
    yellow_light = "#dfdf00",
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
    statusline = "#363636",
    darkgrey = "#e2e2e2",
    transparent = "NONE",
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
    literal = "#b8a25c",
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
    statusline = "#363636",
    darkgrey = "#444444",
    transparent = "NONE",
  }
end

return M
