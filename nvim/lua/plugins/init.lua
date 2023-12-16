return {
    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.4',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Themes and colorschemes
    'Mofiqul/vscode.nvim',
    -- 'tomasiser/vim-code-dark',

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        event = "BufRead"
    },
    'nvim-treesitter/playground',

    -- Other utilities
    'theprimeagen/harpoon',
    'mbbill/undotree',

    -- LSP and Autocompletion
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'neovim/nvim-lspconfig',
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-nvim-lsp',
        }
    },

    -- Autopairs
    'windwp/nvim-autopairs',

    -- Game
    'ThePrimeagen/vim-be-good',

    -- File Explorer
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },

    -- Formatting and Linting
    'jose-elias-alvarez/null-ls.nvim',
    'MunifTanjim/prettier.nvim',
    'frazrepo/vim-rainbow',
    -- Snippets
    'hrsh7th/vim-vsnip',
    'hrsh7th/vim-vsnip-integ',

    -- Status Bar
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            lazy = true
        }
    },

    -- Note Taking
    {
        "epwalsh/obsidian.nvim",
        version = "*",
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        config = function()
            require("obsidian").setup({
                workspaces = {
                    {
                        name = "personal",
                        path = "~/vaults/personal",
                    },
                    {
                        name = "work",
                        path = "~/vaults/work",
                    },
                },
            })
        end,
    },

    -- Surround and Comment Utilities
    {
        "kylechui/nvim-surround",
        version = "*",
        config = function()
            require("nvim-surround").setup({})
        end
    },
    'terrortylor/nvim-comment',
    {
        "ellisonleao/glow.nvim",
        config = function()
            require("glow").setup({})
        end
    },
    -- Git utilities
    'tpope/vim-fugitive',

    -- LuaSnip
    'L3MON4D3/LuaSnip',
    -- LazyGit (Trying replacement for Fugitive)
    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
}
