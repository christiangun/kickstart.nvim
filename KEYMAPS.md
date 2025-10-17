# 🗝️ Neovim Keymap Reference

This document provides a comprehensive reference for all keybindings in this kickstart.nvim configuration.

## 📋 Table of Contents

- [Leader Key](#leader-key)
- [Basic Editor Keymaps](#basic-editor-keymaps)
- [Jumplist Navigation](#jumplist-navigation)
- [Telescope (Fuzzy Finder)](#telescope-fuzzy-finder)
- [LSP (Language Server Protocol)](#lsp-language-server-protocol)
- [Buffer & Window Management](#buffer--window-management)
- [File Explorer (Neo-tree)](#file-explorer-neo-tree)
- [Debugging (DAP)](#debugging-dap)
- [Git Operations](#git-operations)
- [Trouble (Diagnostics & Navigation)](#trouble-diagnostics--navigation)
- [Bookmarks Management](#bookmarks-management)
- [Insert Mode Completion](#insert-mode-completion)
- [Mini.nvim Text Objects](#mininvim-text-objects--surroundings)
- [Discovery & Help](#discovery--help)

---

## 🔧 Leader Key

- **Leader Key**: `<Space>` (Space bar)
- **Local Leader**: `<Space>` (Space bar)

---

## 📋 Basic Editor Keymaps

### 🔍 Search & Navigation

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<Esc>` | Normal | Clear search highlights | Remove search highlighting |
| `<C-h>` | Normal | Focus left window | Move focus to the left window |
| `<C-l>` | Normal | Focus right window | Move focus to the right window |
| `<C-j>` | Normal | Focus lower window | Move focus to the lower window |
| `<C-k>` | Normal | Focus upper window | Move focus to the upper window |
| `<Esc><Esc>` | Terminal | Exit terminal mode | Exit terminal mode |

---

## 🦘 Jumplist Navigation

### 📍 Jump History

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>jp` | Normal | Jump previous | Go back one step in jumplist (same as `<C-o>`) |
| `<leader>jn` | Normal | Jump next | Go forward one step in jumplist (same as `<C-i>`) |
| `<leader>jl` | Normal | Jump list | Open Telescope jumplist picker |

### 💡 Jumplist Tips

- The jumplist tracks your cursor position history across files and locations
- Vim automatically adds entries when you jump between files, search results, or use commands like `gg`, `G`, etc.
- Use `:jumps` to see the raw jumplist in a quickfix-style window
- The Telescope jumplist picker provides a more user-friendly interface with file previews
- Native Vim keybindings `<C-o>` and `<C-i>` still work alongside these custom mappings

---

## 🔭 Telescope (Fuzzy Finder)

### 📁 File & Search Operations

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>sh` | Normal | Search help | Search help documentation |
| `<leader>sk` | Normal | Search keymaps | Search available keymaps |
| `<leader>sf` | Normal | Search files | Find files in project |
| `<leader>ss` | Normal | Select Telescope | Show Telescope builtin pickers |
| `<leader>sw` | Normal | Search current word | Search for word under cursor |
| `<leader>sg` | Normal | Live grep | Search by grep in project |
| `<leader>sd` | Normal | Search diagnostics | Search LSP diagnostics |
| `<leader>sr` | Normal | Resume search | Resume last Telescope search |
| `<leader>s.` | Normal | Recent files | Search recent files |
| `<leader><leader>` | Normal | Find buffers | Find existing buffers |
| `<leader>/` | Normal | Buffer fuzzy find | Fuzzy search in current buffer |
| `<leader>s/` | Normal | Search in open files | Live grep in open files |
| `<leader>sn` | Normal | Search Neovim config | Search Neovim configuration files |

### 💡 Telescope Tips

- In any Telescope picker, press `<C-/>` (Insert mode) or `?` (Normal mode) for help
- Use `<C-n>` and `<C-p>` to navigate results
- Press `<C-x>` to open in horizontal split, `<C-v>` for vertical split

---

## 🧩 LSP (Language Server Protocol)

*These keymaps are available when LSP is attached to a buffer*

### 🎯 Navigation & Definition

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `gd` | Normal | Go to definition | Jump to definition |
| `gr` | Normal | Go to references | Find references |
| `gI` | Normal | Go to implementation | Jump to implementation |
| `gD` | Normal | Go to declaration | Jump to declaration |
| `<leader>D` | Normal | Type definition | Show type definition |

### 🔍 Symbol Search

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>ds` | Normal | Document symbols | Find symbols in current document |
| `<leader>ws` | Normal | Workspace symbols | Find symbols in workspace |

### ✏️ Code Actions

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>rn` | Normal | Rename | Rename symbol under cursor |
| `<leader>ca` | Normal/Visual | Code action | Execute code action |
| `<leader>th` | Normal | Toggle inlay hints | Toggle LSP inlay hints |
| `<leader>q` | Normal | Diagnostic quickfix | Open diagnostic quickfix list |

### 💡 LSP Tips

- Use `<C-t>` to jump back after going to definition
- Hover over symbols to see documentation
- Most LSP functions work through Telescope for better UX

---

## 🔧 Buffer & Window Management

### 📄 Buffer Operations

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>bd` | Normal | Delete buffer | Delete current buffer |
| `<leader>bc` | Normal | Close buffer | Close current buffer |
| `<leader>f` | Normal | Format buffer | Format current buffer |

### 🪟 Window Splitting

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>wsh` | Normal | Split horizontally | Split window horizontally |
| `<leader>wsv` | Normal | Split vertically | Split window vertically |

### 📑 Tab Management

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `tn` | Normal | Next tab | Cycle to next tab |

---

## 📁 File Explorer (Neo-tree)

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>ntt` | Normal | Toggle Neo-tree | Toggle Neo-tree file explorer |
| `<leader>nto` | Normal | Open Neo-tree | Open Neo-tree file explorer |
| `<leader>ntc` | Normal | Close Neo-tree | Close Neo-tree file explorer |

### 💡 Neo-tree Tips

- Use `?` inside Neo-tree to see all available commands
- Press `R` to refresh the tree
- Use `a` to add files/directories, `d` to delete

---

## 🐛 Debugging (DAP)

### 🎮 Debug Controls

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<F5>` | Normal | Start/Continue | Start or continue debugging |
| `<F1>` | Normal | Step into | Step into function |
| `<F2>` | Normal | Step over | Step over line |
| `<F3>` | Normal | Step out | Step out of function |
| `<F7>` | Normal | Toggle debug UI | Show/hide debug interface |

### 🔴 Breakpoints

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>b` | Normal | Toggle breakpoint | Toggle breakpoint at current line |
| `<leader>B` | Normal | Conditional breakpoint | Set conditional breakpoint |

### 💡 Debugging Tips

- Debuggers are configured for Go and PHP
- Use `:DapInstall` to install additional debug adapters
- The debug UI provides variable inspection and call stack

---

## 🗃️ Git Operations

### 🔍 Git Search & Status

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>gs` | Normal | Git status | Open Git status in Telescope |
| `<leader>hB` | Normal | Git blame | Show Git blame for file |

### 📝 Git Hunks (GitSigns)

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `]c` | Normal | Next change | Jump to next git change |
| `[c` | Normal | Previous change | Jump to previous git change |
| `<leader>hs` | Normal/Visual | Stage hunk | Stage git hunk |
| `<leader>hr` | Normal/Visual | Reset hunk | Reset git hunk |
| `<leader>hS` | Normal | Stage buffer | Stage entire buffer |
| `<leader>hu` | Normal | Undo stage hunk | Undo staged hunk |
| `<leader>hR` | Normal | Reset buffer | Reset entire buffer |
| `<leader>hp` | Normal | Preview hunk | Preview git hunk |
| `<leader>hb` | Normal | Blame line | Show blame for current line |
| `<leader>hd` | Normal | Diff index | Show diff against index |
| `<leader>hD` | Normal | Diff last commit | Show diff against last commit |

### 🔄 Git Toggles

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>tb` | Normal | Toggle blame line | Toggle git blame display |
| `<leader>tD` | Normal | Toggle deleted | Toggle show deleted lines |

### 💡 Git Tips

- Git signs appear in the sign column (gutter)
- Use `:Gitsigns` command to access all GitSigns functions
- Visual mode hunk operations work on selected lines

---

## 🚨 Trouble (Diagnostics & Navigation)

### 🔍 Diagnostic Management

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>xx` | Normal | Toggle diagnostics | Show/hide all diagnostics |
| `<leader>xX` | Normal | Buffer diagnostics | Show/hide current buffer diagnostics |
| `<leader>xL` | Normal | Location list | Toggle location list |
| `<leader>xQ` | Normal | Quickfix list | Toggle quickfix list |

### 🧩 LSP Integration

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>cs` | Normal | Symbols outline | Toggle symbols outline |
| `<leader>cl` | Normal | LSP definitions/references | Show LSP definitions and references |

### 💡 Trouble Tips

- Trouble provides a unified interface for diagnostics, quickfix, and location lists
- Use `j`/`k` to navigate items, `<CR>` to jump to location
- Press `q` to close trouble window
- Filter and search within trouble panels using `/`
- Toggle between different views with the keybindings above

---

## 🔖 Bookmarks Management

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>mm` | Normal | Toggle bookmark | Add/remove bookmark at current line |
| `<leader>mi` | Normal | Annotate bookmark | Add/edit bookmark annotation |
| `<leader>mc` | Normal | Clean bookmarks | Clean all bookmarks in buffer |
| `<leader>mn` | Normal | Next bookmark | Jump to next bookmark |
| `<leader>mp` | Normal | Previous bookmark | Jump to previous bookmark |
| `<leader>ml` | Normal | List bookmarks | Show bookmarks in Telescope |
| `<leader>mx` | Normal | Clear all bookmarks | Remove all bookmarks |

### 💡 Bookmarks Tips

- Bookmarks persist across Neovim sessions
- Use annotations to add context to your bookmarks
- Telescope integration allows fuzzy searching through bookmarks

---

## ✍️ Insert Mode Completion

### 📝 Completion Navigation

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-n>` | Insert | Next completion | Select next completion item |
| `<C-p>` | Insert | Previous completion | Select previous completion item |
| `<C-y>` | Insert | Accept completion | Confirm selected completion |
| `<C-Space>` | Insert | Trigger completion | Manually trigger completion |

### 📄 Documentation & Scrolling

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-b>` | Insert | Scroll docs back | Scroll documentation backward |
| `<C-f>` | Insert | Scroll docs forward | Scroll documentation forward |

### 🧩 Snippet Navigation

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-l>` | Insert/Select | Expand/Jump forward | Expand snippet or jump to next placeholder |
| `<C-h>` | Insert/Select | Jump backward | Jump to previous placeholder |

### 💡 Completion Tips

- Completion is triggered automatically as you type
- Sources include LSP, snippets, file paths, and buffer words
- Press `<C-e>` to close completion menu without selecting

---

## 🎨 Mini.nvim Text Objects & Surroundings

### 📍 Enhanced Text Objects (Automatic)

These work with any Vim motion command:

- `va)` - **V**isually select **A**round **)** parentheses
- `yinq` - **Y**ank **I**nside **N**ext **Q**uote
- `ci'` - **C**hange **I**nside **'** single quotes
- `da[` - **D**elete **A**round **[** square brackets

### 🔄 Surround Operations (Automatic)

- `saiw)` - **S**urround **A**dd **I**nner **W**ord with **)** parentheses
- `sd'` - **S**urround **D**elete **'** single quotes
- `sr)'` - **S**urround **R**eplace **)** parentheses with **'** single quotes

### 💡 Text Object Tips

- Works with any combination of actions (y, d, c, v) and text objects
- Enhanced to work across multiple lines (up to 500 lines)
- Use `n` for next and `l` for last in text object selections

---

## 🔍 Discovery & Help

### 🗝️ Keymap Discovery

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>sk` | Normal | Search keymaps | Find any keymap interactively |
| `<Space>` + wait | Normal | Which-key popup | See available keybindings |

### 📚 Documentation

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>sh` | Normal | Search help | Search Neovim help documentation |

### ⚙️ Plugin Management

| Command | Description |
|---------|-------------|
| `:Lazy` | Manage plugins (update, install, remove) |
| `:Mason` | Manage LSP servers, formatters, and tools |
| `:checkhealth` | Check configuration health |
| `:Telescope` | Show all available Telescope pickers |

### 💡 General Tips

- **Which-Key Integration**: Press `<Space>` and wait 300ms to see grouped keymaps
- **Mode Indicators**: `n` = Normal, `i` = Insert, `v` = Visual, `t` = Terminal
- **Key Notation**: `<C-x>` = Ctrl+x, `<leader>` = Space, `<S-x>` = Shift+x
- **Discovery**: Use `<leader>sk` to search for any keymap when you forget
- **Help**: Most plugins have `:help plugin-name` documentation

---

## 🎯 Quick Reference Card

### Most Used Keybindings

| Category | Key | Action |
|----------|-----|--------|
| **Files** | `<leader>sf` | Find files |
| **Search** | `<leader>sg` | Live grep |
| **LSP** | `gd` | Go to definition |
| **LSP** | `<leader>ca` | Code actions |
| **Git** | `<leader>gs` | Git status |
| **Trouble** | `<leader>xx` | Toggle diagnostics |
| **Explorer** | `<leader>ntt` | File tree toggle |
| **Jumplist** | `<leader>jp` | Jump back |
| **Debug** | `<F5>` | Start debugging |
| **Buffer** | `<leader>bd` | Delete buffer |

### Emergency Exits

- `<Esc>` - Normal mode / Clear highlights
- `:q` - Quit window
- `:qa!` - Force quit all
- `<C-c>` - Cancel operation

---

*This keymap reference is automatically generated from your kickstart.nvim configuration. For the most up-to-date keybindings, use `<leader>sk` to search interactively.*
