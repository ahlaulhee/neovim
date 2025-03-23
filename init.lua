-- Vim settings
require("core/options")
-- Keybinds
require("core/keymaps")
-- Bootstrap
require("core/lazy")
-- Plugins
require("lazy").setup({
	"tpope/vim-sleuth",
	require("plugins/gitsigns"),
	require("plugins/alpha"),
	require("plugins/cmp"),
	require("plugins/lint"),
	require("plugins/telescope"),
	require("plugins/which-key"),
	require("plugins/bufferline"),
	require("plugins/colorscheme"),
	require("plugins/lsp"),
	require("plugins/treesitter"),
	require("plugins/aerial"),
	require("plugins/indent-line"),
	require("plugins/autopairs"),
	require("plugins/neo-tree"),
	require("plugins/lualine"),
	require("plugins/todo-comments"),
	require("plugins/colorizer"),
})

-- Set colorscheme
vim.cmd([[colorscheme kanagawa-dragon]])
