<div align="center">
<img src="./assets/logo.png" height="200px" width="200px">
</div> 

<h2 align="center">Neovim Lua Colorscheme (WIP, breaking changes will occur!)</h2>
<p>
<h4 align="center" <i>Neobeans theme for Neovim</i></h4>
</p>

 <p align="center">
<img src="https://img.shields.io/github/stars/neobeans/neobeans.nvim?color=e5c76b&labelColor=22292b&style=for-the-badge">
<img src="https://img.shields.io/static/v1?label=license&message=MIT&color=8ccf7e&labelColor=22292b&style=for-the-badge">
<img src="https://img.shields.io/github/forks/neobeans/neobeans.nvim?color=e74c4c&labelColor=1b2224&style=for-the-badge">
</p>

neobeans.nvim is a port of neobeans.vim but written in lua 

> ** IMPORTANT NOTE **: You need the latest version of neovim to use this, because this is totally written in lua!

## Screenshots

![demonstration](https://raw.githubusercontent.com/neobeans/assets/main/nvim/nvim.png)

## External Plugin Support

- Telescope
- Nvim Tree
- Tresitter
- Lsp
- Lsp saga
- Coc
- Bufferline
- Illuminate
- Diff
- Git signs
- Git gutter
- Lualine
- Ident-BlankLine

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

neobeans.setup({ nvim_tree = { contrast = true } }) -- or use contrast = false to not apply contrast
```

Or with vim script:

```vim
colorscheme neobeans
```

> It will set automatically the `vim.opt.termguicolors` to true

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

## Using the core to get the colors

If you want to get the colors into a lua dictionary

```lua
local neobeans = require('neobeans.core')
local colors = neobeans.get_colors()
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
- [AlphaTechnolog](https://github.com/AlphaTechnolog).
