# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Overview

This is a kickstart.nvim configuration - a well-documented, single-file Neovim setup that serves as a starting point for customization. It's built on the lazy.nvim plugin manager and includes essential plugins for modern development.

## Essential Commands

### Neovim Management
```bash
# Start Neovim
nvim

# Check plugin status
:Lazy

# Update all plugins
:Lazy update

# Check health of installation
:checkhealth

# Clean unused plugins
:Lazy clean
```

### Plugin Installation
```bash
# Install external dependencies (macOS)
brew install ripgrep fd
brew install --cask font-hack-nerd-font

# Install language tools via Mason (inside nvim)
:Mason
```

### Configuration Testing
```bash
# Test configuration syntax
nvim --headless -c 'checkhealth' -c 'qa'

# Start with minimal config for debugging
nvim --clean

# Run Neovim tutor
nvim +Tutor
```

## Architecture

### Configuration Structure
```
~/.config/nvim/
├── init.lua                    # Main configuration file (single-file approach)
├── lua/
│   ├── custom/                 # User customizations
│   │   ├── keybinds.lua       # Personal keybindings
│   │   ├── set.lua            # Personal settings overrides
│   │   └── plugins/           # Custom plugin configurations
│   │       ├── init.lua       # Empty by default
│   │       ├── kanagawa.lua   # Kanagawa colorscheme
│   │       ├── bookmarks.lua  # Bookmark management
│   │       └── github.lua     # GitHub/Copilot (commented out)
│   └── kickstart/
│       ├── health.lua         # Health check utilities
│       └── plugins/           # Kickstart plugin modules
│           ├── debug.lua      # DAP debugging setup
│           ├── neo-tree.lua   # File explorer
│           ├── gitsigns.lua   # Git integration
│           └── indent_line.lua # Indentation guides
└── lazy-lock.json             # Plugin version lockfile
```

### Core Components

**Plugin Manager**: lazy.nvim
- Lazy loading for performance
- Automatic dependency management
- Lock file for reproducible installs

**LSP Configuration**:
- nvim-lspconfig: Core LSP integration
- mason.nvim: Automatic LSP server installation
- conform.nvim: Code formatting
- nvim-cmp: Autocompletion

**Key Plugins**:
- telescope.nvim: Fuzzy finder for files, LSP symbols, etc.
- nvim-treesitter: Syntax highlighting and parsing
- gitsigns.nvim: Git integration in editor
- which-key.nvim: Keybinding help
- mini.nvim: Collection of utility modules

### Leader Key Setup
- Leader key: `<Space>`
- Local leader: `<Space>`
- Nerd Font support: Enabled by default

### Modular Extension Pattern
The configuration uses a modular approach where custom functionality can be added through:
1. `lua/custom/plugins/*.lua` files for new plugins
2. `lua/custom/keybinds.lua` for additional keymappings
3. `lua/custom/set.lua` for setting overrides

## Development Workflow

### Language Support
The configuration includes automatic LSP setup for:
- Lua (lua_ls) - pre-configured
- Add other languages by modifying the `servers` table in init.lua
- Use `:Mason` to install language servers, formatters, and linters

### Key Bindings (Space-prefixed)

**File Operations**:
- `<leader>sf` - Search files
- `<leader>sg` - Live grep
- `<leader>sr` - Resume last search
- `<leader>sn` - Search Neovim config files
- `<leader><leader>` - Switch buffers

**LSP Operations**:
- `gd` - Go to definition
- `gr` - Go to references  
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code action
- `<leader>D` - Type definition

**Git Operations**:
- `<leader>gs` - Git status (Telescope)
- `<leader>hB` - Git blame

**Buffer/Window Management**:
- `<leader>bd` - Delete buffer
- `<leader>bc` - Close buffer
- `<leader>wsh` - Split horizontally
- `<leader>wsv` - Split vertically

**File Explorer**:
- `<leader>nt` - Open Neo-tree
- `\\` - Toggle Neo-tree reveal

**Debugging** (when enabled):
- `F5` - Start/Continue debugging
- `F1/F2/F3` - Step into/over/out
- `<leader>b` - Toggle breakpoint
- `F7` - Toggle debug UI

### Custom Features

**Bookmarks** (if enabled):
- `<leader>mm` - Toggle bookmark
- `<leader>ml` - List bookmarks
- `<leader>mn/mp` - Next/previous bookmark

**Formatting**:
- `<leader>f` - Format buffer
- Automatic formatting on save (configurable per filetype)

### Configuration Philosophy

This configuration follows the "kickstart" approach:
- Single file for easy understanding
- Extensively documented inline
- Minimal but complete feature set
- Designed to be forked and customized
- Uses lazy loading for performance

### Extension Points

1. **Adding Plugins**: Create files in `lua/custom/plugins/`
2. **Keybind Modifications**: Edit `lua/custom/keybinds.lua`  
3. **Setting Overrides**: Modify `lua/custom/set.lua`
4. **Language Support**: Add servers to the `servers` table in init.lua
5. **Colorscheme**: Kanagawa is available as alternative to tokyonight

### Performance Considerations

- Plugins are lazy-loaded based on events, commands, or filetypes
- Treesitter parsers are auto-installed as needed
- Mason tools are installed on-demand
- Configuration uses vim.schedule() for non-blocking clipboard setup
