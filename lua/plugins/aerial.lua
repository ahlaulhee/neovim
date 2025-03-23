return {
	"stevearc/aerial.nvim",
	config = function()
		require("aerial").setup({
			on_attach = function(bufnr)
				vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
				vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
			end,
		})
		vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
	end,
	keys = {
		{ "<leader>a", "<cmd>AerialToggle!<CR>", desc = "Toggle Aerial" },
		{ "{", "<cmd>AerialPrev<CR>", mode = "n", desc = "Aerial Previous" },
		{ "}", "<cmd>AerialNext<CR>", mode = "n", desc = "Aerial Next" },
	},
}
