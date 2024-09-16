# Neovim Configuration

This repository contains my personal Neovim configuration files, built for productivity, efficiency, and a minimal setup. The configuration is focused on improving the developer experience while remaining lightweight and customizable.

## Table of Contents
- [Installation](#installation)
- [Plugins](#plugins)
- [Customization](#customization)

## Installation

1. **Clone the Repository:**
   First, clone this repository into your Neovim config directory:

   ```bash
   git clone https://github.com/AbsoluteZero000/config.nvim ~/.config/nvim
   ```

2. **Install Plugins:**
   This configuration uses `lazy.nvim` as the plugin manager. Install the plugins by running the following command after opening Neovim:

   ```bash
   :Lazy install
   ```

3. **Dependencies:**
   Make sure the following dependencies are installed:
   - Neovim (v0.8+)
   - `ripgrep` (for fuzzy finding)
   - `node.js` (for LSP support in JavaScript/TypeScript)
   - `python3` and `pip` (for Python LSP support)

4. **Start Neovim:**
   Once installed, open Neovim:

   ```bash
   nvim
   ```

   Lazy.nvim will automatically install all the configured plugins.

## Plugins

Some of the core plugins used in this configuration are:

- **[lazy.nvim](https://github.com/folke/lazy.nvim):** A fast and powerful plugin manager.
- **[Telescope](https://github.com/nvim-telescope/telescope.nvim):** Fuzzy finder over lists.
- **[LSP](https://github.com/neovim/nvim-lspconfig):** Native LSP support for a variety of languages.
- **[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter):** Syntax highlighting and parsing.
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim):** Git integration with signs and status updates.
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp):** Autocompletion framework.

## Customization

The config is split into logical files for ease of customization:

- **`init.lua`:** The main entry point for the configuration.
- **`plugins.lua`:** Contains the plugin declarations managed by `lazy.nvim`.
- **`keybindings.lua`:** All custom keybindings are declared here.
- **`lsp.lua`:** Settings related to LSP support, including language servers and autocompletion.

To customize this setup further, feel free to modify these files to fit your needs.
