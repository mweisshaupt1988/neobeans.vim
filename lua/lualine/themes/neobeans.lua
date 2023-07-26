local core = require('neobeans.core')
local colors = core.get_dark_colors()

return {
    normal = {
      a = { bg = colors.green, fg = colors.black, gui = "bold" },
      b = { bg = colors.window, fg = colors.foreground },
      c = { bg = colors.ruler, fg = colors.foreground },
    },

    insert = {
      a = { bg = colors.orange, fg = colors.black, gui = "bold" },
      b = { bg = colors.window, fg = colors.foreground },
    },

    command = {
      a = { bg = colors.bracket, fg = colors.black, gui = "bold" },
      b = { bg = colors.window, fg = colors.foreground },
    },

    terminal = {
      a = { bg = colors.bracket, fg = colors.black, gui = "bold" },
      b = { bg = colors.window, fg = colors.foreground },
    },

    visual = {
      a = { bg = colors.blue, fg = colors.black, gui = "bold" },
      b = { bg = colors.window, fg = colors.foreground },
    },

    replace = {
      a = { bg = colors.color1, fg = colors.background, gui = "bold" },
      b = { bg = colors.window, fg = colors.foreground },
    },

    inactive = {
      a = { bg = colors.background, fg = colors.darkgrey, gui = "bold" },
      b = { bg = colors.background, fg = colors.foreground, gui = "bold" },
      c = { bg = colors.background, fg = colors.foreground },
    },
}
