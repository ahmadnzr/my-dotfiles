# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal Neovim configuration written in Lua, using the lazy.nvim plugin manager. The configuration is tailored for web development with TypeScript, React, and related technologies.

## Architecture

The configuration follows a modular structure under `lua/nizardev/`:

```
lua/nizardev/
├── configs/       # Plugin configurations
├── customs/       # Custom utilities and functions
├── plugins/       # Plugin specifications for lazy.nvim
├── lazy.lua       # lazy.nvim bootstrap and setup
├── options.lua    # Vim options
└── keymaps.lua    # General keymaps
```

### Configuration Loading Pattern

1. `init.lua` loads modules in this order:
   - `nizardev.customs.copy` - Custom copy utilities
   - `nizardev.lazy` - Lazy.nvim setup and plugin loading
   - `nizardev.options` - Vim options
   - `nizardev.keymaps` - General keymaps

2. lazy.nvim loads plugins from `lua/nizardev/plugins/init.lua`, which returns a table of plugin specs. Each plugin spec can reference its config in `lua/nizardev/configs/`.

3. Plugin-specific keymaps are defined within their respective config files.

## Plugin Management

### Installing/Updating Plugins

- **Install plugins**: Open Neovim and lazy.nvim will auto-install missing plugins
- **Update plugins**: `:Lazy sync` or `:Lazy update`
- **Check plugin status**: `:Lazy`
- **Clean unused plugins**: `:Lazy clean`

### Mason (LSP/Tools)

- **Open Mason**: `:Mason`
- **Install LSP/tool**: `:MasonInstall <name>`
- **Uninstall**: `:MasonUninstall <name>`

Auto-installed LSP servers (defined in `lua/nizardev/configs/mason.lua:18-30`):
- ts_ls (TypeScript)
- html, cssls, tailwindcss
- eslint
- lua_ls
- prismals

Auto-installed tools:
- prettier, stylua (formatters)
- eslint_d (linter)

## LSP Configuration

LSP setup is in `lua/nizardev/configs/lspconfig.lua`. The configuration uses the new `vim.lsp.config()` API.

### Configured Language Servers

- **JavaScript/TypeScript**: ts_ls, eslint (with auto-fix on save)
- **HTML/CSS**: html, cssls
- **Tailwind CSS**: Includes custom regex for cva() and cx() patterns
- **Prisma**: prismals
- **Lua**: lua_ls (configured to recognize vim global)

### LSP Keymaps (available in buffers with LSP attached)

- `gR` - Show LSP references (Telescope)
- `gd` - Go to definition
- `sd` - Show definitions (Telescope)
- `gi` - Show implementations (Telescope)
- `gt` - Show type definitions (Telescope)
- `<leader>ca` - Code actions
- `<leader>rn` - Rename symbol
- `<leader>D` - Show buffer diagnostics
- `<leader>d` - Show line diagnostics
- `[d` / `]d` - Previous/next diagnostic
- `K` - Hover documentation
- `<leader>rs` - Restart LSP

## Formatting and Linting

### Conform.nvim (Formatting)

Configuration: `lua/nizardev/configs/conform.lua`

- **Auto-format on save**: Enabled with 500ms timeout and LSP fallback
- **Manual format**: `<leader>fm`
- **Formatters by filetype**:
  - Lua: stylua
  - CSS/HTML: prettier
  - JavaScript/TypeScript/React: prettier

### nvim-lint (Linting)

Configuration: `lua/nizardev/configs/lint.lua`

- **Auto-lint triggers**: BufEnter, BufWritePost, InsertLeave
- **Manual lint**: `<leader>l`
- **Linters**: eslint_d for JS/TS/React files

## Custom Copy Utility

Location: `lua/nizardev/customs/copy.lua`

This custom utility enables copying code selections in AI-friendly formats (useful for sharing code with LLMs).

### Visual Mode Keymaps

- `<leader>ya` - Copy as plain text (relative path)
- `<leader>yA` - Copy as plain text (absolute path)
- `<leader>yy` - Copy as YAML (relative path)
- `<leader>yY` - Copy as YAML (absolute path)
- `<leader>yj` - Copy as JSON (relative path)
- `<leader>yJ` - Copy as JSON (absolute path)

### Commands

- `:CopyPlain`, `:CopyPlainAbs`
- `:CopyYaml`, `:CopyYamlAbs`
- `:CopyJson`, `:CopyJsonAbs`

## Key Plugins and Their Configs

- **nvim-tree**: File explorer (`lua/nizardev/configs/nvimtree.lua`)
  - `<leader>ee` - Toggle explorer
  - `<leader>ef` - Toggle on current file
  - `<leader>ec` - Collapse
  - `<leader>er` - Refresh

- **telescope.nvim**: Fuzzy finder (`lua/nizardev/configs/telescope.lua`)
  - `<leader>ff` - Find files
  - `<leader>fr` - Recent files
  - `<leader>fs` - Live grep
  - `<leader>fc` - Grep word under cursor
  - `<leader>fb` - Find buffers
  - `<leader>gs/gb/gt` - Git status/branches/stash

- **bufferline.nvim**: Buffer tabs
- **lualine.nvim**: Statusline (evil theme)
- **nvim-treesitter**: Syntax highlighting and text objects
- **nvim-cmp**: Autocompletion
- **gitsigns.nvim**: Git integration
- **nvim-surround**: Surround motions
- **nvim-autopairs**: Auto-close pairs

## General Keymaps

Leader key: `<Space>`

### Window Management
- `ss` / `sh` - Split vertical/horizontal
- `se` - Equal width splits
- `sq` - Close window

### Tab Management
- `to` - New tab
- `tq` - Close tab
- `tn` / `tp` - Next/previous tab

### Terminal
- `<leader>tn` - Terminal in new tab
- `<leader>ts` - Terminal in vertical split
- `<leader>th` - Terminal in horizontal split

### Folding
- `fa{motion}` - Fold around (e.g., `fat` = fold around tag)
- `fi{motion}` - Fold inner (e.g., `fit` = fold inner tag)

### Other
- `jk` - Exit insert mode
- `<leader>nh` - Clear search highlight
- `<C-a>` - Select all
- `x` - Delete without yanking
- `+` / `-` - Increment/decrement number
- `mj` / `mk` - Move line down/up

## Vim Options

Key settings from `lua/nizardev/options.lua`:
- Relative line numbers enabled
- Tab size: 2 spaces
- No line wrapping
- Smart case-insensitive search
- Cursor line highlight
- System clipboard integration
- Smart split behavior (right/below)
- Mouse move events enabled
- JSON files auto-formatted with `jq` on `:!gq`
