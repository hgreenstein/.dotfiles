function ColorMyCode(color)
	color = color or "vscode"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyCode()
-- Enable syntax highlighting
-- vim.cmd 'syntax on'
--
-- -- Set terminal colors to 256 and enable cursor line
-- vim.cmd 'set t_Co=256'
-- vim.cmd 'set cursorline'
--
-- -- Set the color scheme
-- vim.cmd 'colorscheme vscode'
--
-- -- Configure airline theme
-- vim.g.airline_theme = 'onehalfdark'
