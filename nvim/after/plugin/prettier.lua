local prettier = require("prettier")
prettier.setup({
    filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "java",
        "python",
        "rust",
        "bash",
        "lua",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
    },
    ["null-ls"] = {
        condition = function()
            return prettier.config_exists({
                -- if `false`, skips checking `package.json` for `"prettier"` key
                check_package_json = true,
            })
        end,
        runtime_condition = function(params)
            -- return false to skip running prettier
            return true
        end,
        timeout = 5000,
    },
    cli_options = {
        trailing_comma = "es5";
        tab_width = 4,
        bracket_same_line = false,
        arrow_parens = "always",
        bracket_space = true,
        single_quote = true,
        single_attribute_per_line = false,
    },
})

vim.api.nvim_set_keymap('n', '<Leader>:', ':Prettier<CR>', { noremap = true, silent = true })
