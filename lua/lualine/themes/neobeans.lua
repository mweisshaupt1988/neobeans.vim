local core = require('neobeans.core')
local colors = core.get_colors()

local neobeans = {}

neobeans.normal = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.background, fg = colors.green },
  c = { bg = colors.background, fg = colors.foreground },
}

neobeans.insert = {
  a = { bg = colors.black, fg = colors.orange },
  b = { bg = colors.background, fg = colors.color4 },
}

neobeans.command = {
  a = { bg = colors.color1, fg = colors.background },
  b = { bg = colors.background, fg = colors.color5 },
}

neobeans.visual = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.background, fg = colors.color6 },
}

neobeans.replace = {
  a = { bg = colors.color1, fg = colors.background },
  b = { bg = colors.background, fg = colors.color11 },
}

neobeans.inactive = {
  a = { bg = colors.background, fg = colors.darkgrey },
  b = { bg = colors.background, fg = colors.foreground, gui = "bold" },
  c = { bg = colors.background, fg = colors.foreground },
}

return neobeans
