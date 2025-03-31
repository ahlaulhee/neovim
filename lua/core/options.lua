vim.g.have_nerd_font = true

-- Set leader key to <SPACE>.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Show number of current line and the relative numbers on the rest of the lines. Also allow me to move using mouse.
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"

-- Remove message on the last line indicating the mode.
vim.opt.showmode = false

-- Use system clipboard.
vim.opt.clipboard = "unnamedplus"

-- Wrapping lines follows the same indentation.
vim.opt.breakindent = true
-- Copy indent from current line when starting a new one.
vim.opt.autoindent = true

-- Saves undo history of the buffer.
vim.opt.undofile = true

-- Case insensitive search when in lowercase.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Warnings, errors, etc... showing on the line number
vim.opt.signcolumn = "yes"

-- Always leave 10 lines above and below the cursor.
vim.opt.scrolloff = 10

-- Time it takes neovim to type to swap file in case a crash happen.
vim.opt.updatetime = 250
-- Time to wait for a mapped sequence to complete.
vim.opt.timeoutlen = 300

-- Split to the right.
vim.opt.splitright = true
-- Split below.
vim.opt.splitbelow = true

-- Overwrite symbols for tabs, trails and nbsp.
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

--
vim.opt.inccommand = "split"

-- Highlight the text line of the cursor.
vim.opt.cursorline = true

-- Dont wrap lines and dont split words.
vim.o.wrap = false
vim.o.linebreak = true

-- Indentation settings.
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

vim.opt.termguicolors = true

vim.o.numberwidth = 2

-- Highlight yankked code.
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Neovim terminal options
vim.api.nvim_create_autocmd("TermOpen", {
	group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})
