# .dotfiles
## Description:
This repository contains links to multiple different configurations that live across my WSL and Linux Mint Environments. 

This folder repository is intented to live in either the hone directory or .config directory and the invidual directorys 
and .config files are symbolically linked with the `ln -s` bash command to the appropriate directory, example `~/.bashrc` 

## Installation:

1. First clone the repository into appropriate directory

By default files like the bashrc will look for other resources like the terminal prompt theme in the home directory

```bash
git clone git@github.com:hgreenstein/.dotfiles.git ~/.dotfiles
```
2. Create Symbolic links to the appropriate directories
   
A. .bashrc
```bash
ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc
```
B. Neovim (Assuming neovim is already installed and looking for the neovim folder in `~/.config/nvim`
```bash
ln -s ~/.dotfiles/nvim ~/.config/nvim 
```

## Additional Information and Credit

### Bash
Bash utilizes multiple aliases that may be useful for those that have the appropriate packages installed
#### Example
Alias: `ls -> exa -alFh` for a prettier, long formatted and human readable ls command

If you do not have exa installed on your system, it can be easily installed with a linux package manager:
Example for Ubuntu based Distros and those that us APT as a package manager:
```bash
sudo apt install exa
```

#### Bash Credit:
1. My bash uses [Oh My Posh](https://github.com/jandedobbeleer/oh-my-posh) for it's custom prompt, please refer to the original github for more 
2. Additionally, credit to many useful terminal utility commands like [exa](https://github.com/ogham/exa) 

### Neovim Credits:
Neovim configuration utilizes the [Lazy.Nvim Package Manager](https://github.com/folke/lazy.nvim)
Additionally, a variety of Neovim Plugins are used to extend the default Functionality Including:
- [Nvim Telescope](https://github.com/nvim-telescope/telescope.nvim) For Grep Functionality
- [Plenary](https://github.com/nvim-lua/plenary.nvim) Telescope Dependency
- [Vscode.Nvim](https://github.com/Mofiqul/vscode.nvim) For Color Scheme mimicking VSCode dark+ 
- [Nvim Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) For Syntax highlighting, function jumping and more
- [Treesitter Playground](https://github.com/nvim-treesitter/playground) - Ability to parse syntax tree using treesitter
- [Harpoon - ThePrimeagen](https://github.com/theprimeagen/harpoon) For each file switching with leader + # of file
- [Undo Tree](https://github.com/mbbill/undotree) For a google drive like local edit history to easily revert to a previous state between github commits
- [Lsp-Zero](https://github.com/VonHeikemen/lsp-zero.nvim) For an LSP manager plugin
- [Mason](https://github.com/williamboman/mason.nvim) & [Mason Lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) For lsp server installation and management
- [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp) and [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) For LSP completion related Capabilities
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) for snippets
- [Autopairs](https://github.com/windwp/nvim-autopairs) for auto closing {}, (), [], + more
- [Vim Be Good](https://github.com/ThePrimeagen/vim-be-good) for fun vim games to help with quick actions
- [Nvim Tree](https://github.com/nvim-tree/nvim-tree.lua) Adds tree like file structure in a buffer, far superior to :Explorer
- [Nvim Web Devicons](https://github.com/nvim-tree/nvim-web-devicons) Adds icon support 
- [Null Ls Nvim](https://github.com/jose-elias-alvarez/null-ls.nvim) Additional LSP functionality
- [Prettier Nvim](https://github.com/MunifTanjim/prettier.nvim) Prettier Linter formatting for HTML/JS/React(JSX/TSX)/CSS/ + more
- [Vim Rainbow](https://github.com/frazrepo/vim-rainbow) Corresponding rainbow colored brackets for easy scope identification
- [Vim Vsnip](https://github.com/hrsh7th/vim-vsnip) Additional Snippets
- [Vim Vsnip Integ](https://github.com/hrsh7th/vim-vsnip-integ) Additional Snippets
- [Lualine Nvim](https://github.com/nvim-lualine/lualine.nvim) Adds nice status bar below focused buffer including mode, file name, line % and more
- [Obsidian Nvim](https://github.com/epwalsh/obsidian.nvim) Adds Markdown support to Neovim for editting an Obsidian vault 
- [Nvim Surround](https://github.com/kylechui/nvim-surround) Ability to quickly surround text in "", '', {}, (), func(), <tag></tag>, and more using motions like `ys+motion+[surround_char]` ex: `ysiw"` surrounds word with quotes
- [Nvim Comment](https://github.com/terrortylor/nvim-comment) Quickly comment out lines in any language with `gc+motion` or `gcc` for line
- [Glow Nvim](https://github.com/ellisonleao/glow.nvim) Preview formatted markdown documents in neovim utilizing the glow package 
