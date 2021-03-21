# Example nvim config for C and C++ development

This is a simplified version of [The Primeagen's Neovim config](https://github.com/awesome-streamers/awesome-streamerrc/tree/master/ThePrimeagen)

- Clone this into `~/.config/` and rename it to `nvim`.
- Start nvim and ignore error messages. Run `:PlugInstall` and quit when installation is finished
- Open nvim again and everything should run.

## Features

- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) for clang language server.
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) for fuzzy file finding.
  - access dotfiles with `space vrc`
- [compe](https://github.com/hrsh7th/nvim-compe) for completion.
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for syntax highlighting.
- [Gruvbox color scheme](https://github.com/morhetz/gruvbox) because gruvbox.
- [vimspector](https://github.com/puremourning/vimspector) and [vim-maximizer](https://github.com/szw/vim-maximizer) for debugging.
- [vim-dispatch](https://github.com/tpope/vim-dispatch)
- Git support with [vim-fugitive](https://github.com/tpope/vim-fugitive) and [gv.vim](https://github.com/junegunn/gv.vim)
- [Neoformat](https://github.com/sbdchd/neoformat) for formatting.

## Clang completion

- [lspconfig clangd config](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#clangd)
- [clangd](https://clangd.llvm.org/installation.html) must be installed for completion to work.
- clangd needs compile_commands.json for completeion beyond the standard library. compile_commands.json can be [generated](https://cmake.org/cmake/help/latest/variable/CMAKE_EXPORT_COMPILE_COMMANDS.html) with cmake.
