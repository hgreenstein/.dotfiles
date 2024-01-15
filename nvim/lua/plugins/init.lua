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
            {
                "L3MON4D3/LuaSnip",
                -- follow latest release.
                version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
                -- install jsregexp (optional!).
                build = "make install_jsregexp"
            },
        }
    },
    -- Rust Tools
    'simrat39/rust-tools.nvim',
    -- LSP Inline Hints
    'lvimuser/lsp-inlayhints.nvim',
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

    -- LazyGit (Trying replacement for Fugitive)
    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    -- Tmux Navigation with ctrl + hjkl
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        keys = {
            { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },
    -- Debugger Adapter Protocol (DAP)
    'mfussenegger/nvim-dap',
    -- Debug UI
    {
        'rcarriga/nvim-dap-ui',
        dependencies = {
            'mfussenegger/nvim-dap'
        },
    },
    -- Javascript Specific Debuggers

    'microsoft/vscode-js-debug',

    'mxsdev/nvim-dap-vscode-js',
    'jay-babu/mason-nvim-dap.nvim',
    {
        "David-Kunz/gen.nvim",
        opts = {
            model = "codellama:7b", -- The default model to use.
            display_mode = "float", -- The display mode. Can be "float" or "split".
            show_prompt = true, -- Shows the Prompt submitted to Ollama.
            show_model = true,  -- Displays which model you are using at the beginning of your chat session.
            no_auto_close = true, -- Never closes the window automatically.
            init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
            -- Function to initialize Ollama
            command = "curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body",
            -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
            -- This can also be a lua function returning a command string, with options as the input parameter.
            -- The executed command must return a JSON object with { response, context }
            -- (context property is optional).
            list_models = '<omitted lua function>', -- Retrieves a list of model names
            debug = false                       -- Prints errors and the command which is run.
        }
    },
    { 'folke/which-key.nvim', opts = {} },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            "rcarriga/nvim-notify",
        }
    },
}
