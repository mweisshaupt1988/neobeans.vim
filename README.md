<h2 align="center">Neovim Lua Colorscheme</h2>
<p>
  <h4 align="center" <i>Neobeans theme for Neovim</i></h4>
</p>

<!--
<p align="center">
  <img src="https://img.shields.io/github/stars/neobeans/neobeans.nvim?color=e5c76b&labelColor=22292b&style=for-the-badge">
  <img src="https://img.shields.io/static/v1?label=license&message=MIT&color=8ccf7e&labelColor=22292b&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/neobeans/neobeans.nvim?color=e74c4c&labelColor=1b2224&style=for-the-badge">
</p>
-->

neobeans.nvim is a theme loosely based on the default NetBeans theme. It features a dark and a light variant.

> Requirements: Neovim 0.7+ and a font patched with NerdFonts glyphs (or disable the custom signs)

## Screenshots
![dark theme](assets/neobeans_dark.png?raw=true)
![light theme](assets/neobeans_light.png?raw=true)

## External Plugin Support

- dadbod, dadbod-ui
- Dap, Dap-ui
- nvim-cmp
- Telescope
- NERDTree
- Nvim Tree
- Treesitter
- Lsp
- Illuminate
- Diff
- Git signs
- Git gutter
- Signify
- Neogit
- Lualine
- Bufferline
- vim-airline
- Lightbulb
- Ident-BlankLine
- Scrollbar
- Startify

## Custom command
neobeans.vim registers a custom command to switch between dark and light theme.
```vim
:ToggleNeobeans
```

## Installation

You can install this plugin with packer:

```lua
use { 'neobeans/neobeans.nvim', as = 'neobeans' }
```

Or with vim-plug:

```vim
Plug 'neobeans/neobeans.nvim', { 'as': 'neobeans' }
```

## Active theme

To active the theme call this in your neovim config:

```lua
local neobeans = require('neobeans')

neobeans.setup({
    nvim_tree = { contrast = true }, -- or use contrast = false to not apply contrast
    light_mode = false, -- the default is the dark theme, set to true to enable light theme
})
```

Or with vim script:

```vim
colorscheme neobeans
or
colorscheme neobeans_dark
```

> It will automatically set the `vim.opt.termguicolors` to true

## Custom Signs
The theme sets some custom signs with matching highlight definitions. See [custom_signs.lua](lua/neobeans/custom_signs.lua) for details.

> The signs require a font patched with NerdFonts glyphs!

If you don't want those signs to be set, disable them prior to loading the theme.
```lua
vim.g.neobeans_disable_signs = false
```


## Activating lualine theme

Place this in your lualine config:

```lua
local lualine = require('lualine')

lualine.setup {
  options = {
    theme = 'neobeans',
  },
}
```

## Activating vim-airline theme
vim.g.airline_theme = "neobeans"

## Using the core to get the colors

If you want to get the colors into a lua dictionary

```lua
local neobeans = require('neobeans.core')
local colors = neobeans.get_dark_colors()
-- or
local colors = neobeans.get_light_colors()

```

## Overriding colors

If you want to override and customize the colors for various parts of the theme check out the [config](/lua/neobeans/config.lua) and override like so:

```lua
local colors = require('neobeans.core').get_colors()

require('neobeans').setup({
  override = {
    CursorLineNr = { fg = colors.foreground },
    LineNr = { fg = colors.comment },
  },
})
```

Any other colors can be overriden in a similar way.

## Credits 💝
- [Everblush](https://github.com/Everblush/everblush.nvim).
