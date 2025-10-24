# Repository Guidelines

## Project Structure & Module Organization
init.lua bootstraps Lazy and merges upstream Kickstart config with local overrides. Shared health checks live in `lua/kickstart/health.lua`. Custom behaviour sits under `lua/custom`, with `set.lua` for editor options and `keybinds.lua` for mappings. Plugin specs follow Kickstart defaults in `lua/kickstart/plugins` and repository-specific additions in `lua/custom/plugins`, one file per feature for quick diffs. Documentation and workflows stay in the top-level Markdown guides (`README.md`, `KEYMAPS.md`, `PHP_DEBUG_SETUP.md`) and the `doc/` directory.

## Build, Test, and Development Commands
- `nvim --headless "+Lazy sync" +qa` installs or upgrades plugins to match `lazy-lock.json`.  
- `nvim --headless "+Lazy clean" +qa` prunes plugins removed from either plugin directory.  
- `nvim --headless "+MasonUpdate" +qa` refreshes external tooling such as LSP servers and formatters before committing changes.  
- `nvim --headless "+TSUpdateSync" +qa` ensures tree-sitter parsers referenced in `lua/custom/plugins/treesitter.lua` stay current.

## Coding Style & Naming Conventions
Lua files use two-space indentation, trailing commas in multiline tables, and return a single spec table from each module. Keep module names lower_snake_case to mirror their feature (`github.lua`, `markdown.lua`) and group related configuration under descriptive keys (`opts`, `config`, `dependencies`). Format all Lua changes with `stylua lua` to match the formatter list declared in `init.lua`. Inline comments should explain intent rather than mechanics, aligning with existing Kickstart style.

## Testing Guidelines
Run `nvim --headless "+checkhealth" +qa` after adjusting options or adding tooling to surface missing dependencies early. For plugin changes, execute `nvim --headless "+lua require('kickstart.health').check()" +qa` to reuse the bundled diagnostics. When altering keymaps or UI settings, launch Neovim normally and confirm mappings via `:map` and visuals in both light and dark backgrounds. Keep an eye on startup performance with `:Lazy profile` before approving substantial plugin additions.

## Commit & Pull Request Guidelines
Commits follow short, imperative summaries with leading capitalization (`Use Kanagawa as theme`, `Added KEYMAPS.md file`); keep body text concise and reference affected modules. Rebase locally before submission so `lazy-lock.json` stays conflict-free. Pull requests should link related issues, describe user-facing changes, and include screenshots or recordings when altering visual themes or key UI plugins. Mention any required follow-up edits to companion docs such as `PHP_DEBUG_SETUP.md` or `WARP.md`.
