local M = {}
local captures = require("neobeans.custom_captures")
local core = require('neobeans.core')
local highlights = require('neobeans.highlights')
local signs = require("neobeans.custom_signs")

    function M.setup (opts)
        if opts == nil then
            opts = {}
    end

    captures.set_custom_captures()
    signs.set_custom_signs()

    local colors = nil
    local light_mode = opts.light_mode or false
    if light_mode == true then
        colors = core.get_light_colors()
        vim.o.background = "light"
    else
        colors = core.get_dark_colors()
        vim.o.background = "dark"
    end

    vim.opt.termguicolors = true
    highlights.highlight_all(colors, opts)

    -- TODO
    vim.g.terminal_color_0 = '#282a2e'
    vim.g.terminal_color_1 = colors.red_light --'#a54242'
    vim.g.terminal_color_2 = '#128068'
    vim.g.terminal_color_3 = colors.orange_light --'#d16504'
    vim.g.terminal_color_4 = colors.blue --'#005e80'
    vim.g.terminal_color_5 = '#523d66'
    vim.g.terminal_color_6 = '#5e8d87'
    vim.g.terminal_color_7 = '#ffffff'
    vim.g.terminal_color_8 = '#373b41'
    vim.g.terminal_color_9 = '#cc6666'
    vim.g.terminal_color_10 = colors.green --'#1abc9c'
    vim.g.terminal_color_11 = '#f5aa1f'
    vim.g.terminal_color_12 = colors.blue --'#00aae6'
    vim.g.terminal_color_13 = colors.purple_dark --'#513666'
    vim.g.terminal_color_14 = '#8abeb7'
    vim.g.terminal_color_15 = '#c5c8c6'

    vim.api.nvim_create_user_command("ToggleNeobeans",
        function()
            if (light_mode) then
                light_mode = false
                vim.cmd(":colorscheme neobeans")
            else
                light_mode = true
                vim.cmd(":colorscheme neobeans_light")
            end
        end,
    {})

end

return M
