# Neovim Configuration

## Project Overview

This is a personal Neovim configuration based on the [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) repository. It is written in Lua and uses the [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager to handle plugins.

The configuration is structured to be modular, with the base configuration from `kickstart.nvim` and personal customizations located in the `lua/custom/` directory.

## Building and Running

This is a Neovim configuration, so there is no build process. To "run" the project, simply start Neovim:

```bash
nvim
```

The `lazy.nvim` plugin manager will automatically handle the installation and loading of plugins.

## Development Conventions

### Directory Structure

*   `init.lua`: The main entry point for the Neovim configuration. It sets up `lazy.nvim` and loads the base plugins.
*   `lua/kickstart/`: Contains the base configuration from `kickstart.nvim`.
*   `lua/custom/`: Contains personal customizations, including plugins, keybindings, and settings.
    *   `lua/custom/plugins/`: Each file in this directory defines a plugin to be loaded by `lazy.nvim`.
    *   `lua/custom/keybinds.lua`: Defines personal keybindings.
    *   `lua/custom/set.lua`: Defines personal settings.

### Adding a New Plugin

To add a new plugin, create a new `.lua` file in the `lua/custom/plugins/` directory. The file should return a table that follows the `lazy.nvim` plugin specification.

For example, to add a plugin named `my-plugin`, create a file `lua/custom/plugins/my-plugin.lua` with the following content:

```lua
return {
  'username/my-plugin',
  -- Configuration for the plugin
  config = function()
    require('my-plugin').setup({})
  end,
}
```

### Formatting

This project uses [stylua](https://github.com/JohnnyMorganz/StyLua) to format Lua code. The configuration for `stylua` is in the `.stylua.toml` file.

There is a GitHub workflow in `.github/workflows/stylua.yml` that checks for formatting on pull requests. To format the code locally, you can run:

```bash
stylua .
```
