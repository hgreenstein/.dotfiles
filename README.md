# .dotfiles
## Description:
This repository contains links to multiple different configurations that live across my WSL and Linux Mint Environments. 

This folder repository is intented to live in either the home directory or .config directory and the invidual directorys 
and .config files are symbolically linked with the `ln -s` bash command to the appropriate directory, example `~/.bashrc` 

### Neovim Config Example Image:
![Neovim Image](Example%20Images/neovimExample.png)

### Bashrc Config Example Image:
![.bashrc image](Example%20Images/bashrcExample.png)

## Installation:

1. First clone the repository into appropriate directory

By default files like the bashrc will look for other resources like the terminal prompt theme in the home directory

```bash
git clone https://github.com/hgreenstein/.dotfiles.git ~/.dotfiles
```
2. Create Symbolic links to the appropriate directories
   
A. .bashrc and .inputrc
```bash
ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc
ln -s ~/.dotfiles/bash/.inputrc ~/.inputrc
```
B. Neovim (Assuming neovim is already installed and looking for the neovim folder in `~/.config/nvim`
```bash
ln -s ~/.dotfiles/nvim ~/.config/nvim 
```
### Neovim Installation Part 2: System dependencies 
Doing the above installation steps will successfully install all the plugins in Neovim but many errors will still likely occur upon startup of Neovim 
This is due to package dependencies in many plugins, for example Telescope (cited below) requires [ripgrep](https://github.com/BurntSushi/ripgrep) for the grep functionality to work properly.
Additionally, many standard programming libraries and environments must be installed including but not limited to:
1. Python 
2. Node & npm
3. C-compiler like GCC in path
4. Java dev tools for java lsp servers
5. Curl, Tar, Git, Gzip, Unzip, [ripgrep](https://github.com/BurntSushi/ripgrep), [lazygit](https://github.com/jesseduffield/lazygit)
6. A "Nerd Font" of choice installed, a great resource is [nerdfonts.com](https://www.nerdfonts.com/font-downloads)
   a. If you don't have a preferred font, I suggest JetBrains Mono Nerd Font, it's designed for easy code readability! 


I hope to add a comprehensive installation script for all common linux operating systems in the future, but for now please refer to the linked documentation of each plugin you plan to use to
ensure all system dependencies are installed.
If you have been using your linux system for development for a long period of time, many of these may already be installed but if not, refer to the official documentation to install these tools

## Additional Information and Credit

### Bash
Bash utilizes multiple aliases that may be useful for those that have the appropriate packages installed
#### Example
Alias: `ls -> eza -alFh` for a prettier, long formatted and human readable ls command

If you do not have eza installed on your system, it can be easily installed with a linux package manager:
Example for those with a Cargo Rust environment already setup:
```bash
cargo install eza
```
Learn more about eza on the [official GitHub page](https://github.com/eza-community/eza)

For the colorscript pixel art randomly at each run of the bashrc, see the documentation of [Shell Color Scripts](https://gitlab.com/dwt1/shell-color-scripts) by Derek Taylor

#### Inputrc

The .inputrc makes basic modifications like changing the default emacs keybindings to vi keybindings to fit with my neovim workflow. Additionally, it prepends a 'i' or 'n' to the prompt for insert and normal mode to easily keep track of vi mode while using the terminal

#### Bash Credit:
1. My bash uses [Oh My Posh](https://github.com/jandedobbeleer/oh-my-posh) for it's custom prompt, please refer to the original github for more
2. The pixel art that appears randomly on every bash prompt is [Shell Color Scripts](https://gitlab.com/dwt1/shell-color-scripts) by Derek Taylor
3. Additionally, credit to many useful terminal utility commands like [exa](https://github.com/ogham/exa) 

### Tmux

- Rebinds prefix to Ctrl-S 

- Adds vim keybindings for navigation and visual mode

- Adds plugin support via [TPM](https://github.com/tmux-plugins/tpm)

#### Tmux plugins

- Easily switch between Neovim and Tmux panes with ctrl + hjkl on both!
   - Dual support comes via the [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) plugin
   - Must be installed on both Neovim and Tmux
- Informative and easy to read, red and black status bar
   - Provided by the [tmux-power](https://github.com/wfxr/tmux-power) plugin


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
- [Vim Vsnip](https://github.com/hrsh7th/vim-vsnip) & [Vim Vsnip Integ](https://github.com/hrsh7th/vim-vsnip-integ) Additional Snippets
- [Lualine Nvim](https://github.com/nvim-lualine/lualine.nvim) Adds nice status bar below focused buffer including mode, file name, line % and more
- [Obsidian Nvim](https://github.com/epwalsh/obsidian.nvim) Adds Markdown support to Neovim for editting an Obsidian vault 
- [Nvim Surround](https://github.com/kylechui/nvim-surround) Ability to quickly surround text in "", '', {}, (), func(), <tag></tag>, and more using motions like `ys+motion+[surround_char]` ex: `ysiw"` surrounds word with quotes
- [Nvim Comment](https://github.com/terrortylor/nvim-comment) Quickly comment out lines in any language with `gc+motion` or `gcc` for line
- [Glow Nvim](https://github.com/ellisonleao/glow.nvim) Preview formatted markdown documents in neovim utilizing the glow package 
- [Vim Fugative](https://github.com/tpope/vim-fugitive) Graphical Git management, staging, merging, commiting, pushing and more
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) Easily switch between Neovim and Tmux panes with ctrl + hjkl on both!
- [Lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) Bring a floating lazygit terminal panel into your neovim if [lazygit](https://github.com/jesseduffield/lazygit) is already installed
- [Rust Tools](https://github.com/simrat39/rust-tools.nvim) Adds tools for developing in the rust language such as in buffer running of code
- [LSP Inlay Hints](https://github.com/lvimuser/lsp-inlayhints.nvim) Adds in line hints from the language server (ex: adds type hints for rust variables and functions when types are only implicitly defined) 
