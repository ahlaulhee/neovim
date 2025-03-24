return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = {
		"moll/vim-bbye",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				themable = true,
				numbers = "none",
				close_command = "Bdelete! %d",
				buffer_close_icon = "",
				close_icon = "",
				path_components = 1,
				modified_icon = "●",
				left_trunc_marker = "",
				right_trunc_marker = "",
				max_name_length = 30,
				max_prefix_length = 30,
				tab_size = 21,
				diagnostics = false,
				diagnostics_update_in_insert = false,
				color_icons = true,
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				persist_buffer_sort = true,
				-- separator_style = { "│", "│" },
				separator_style = { "", "" },
				enforce_regular_tabs = true,
				always_show_bufferline = true,
				show_tab_indicators = false,
				indicator = {
					icon = "▎",
					style = "icon",
				},
				icon_pinned = "󰐃",
				minimum_padding = 1,
				maximum_padding = 5,
				maximum_length = 15,
				sort_by = "insert_at_end",
			},
			highlights = {
				fill = {
					fg = "#c5c9c5",
					bg = "#181616",
				},
				background = {
					fg = "#c5c9c5",
					bg = "#181616",
				},
				close_button = {
					fg = "#c5c9c5",
					bg = "#181616",
				},
				close_button_visible = {
					fg = "#c5c9c5",
					bg = "#181616",
				},
				close_button_selected = {
					fg = "#c5c9c5",
					bg = "#181616",
				},
				buffer_visible = {
					fg = "#c5c9c5",
					bg = "#181616",
				},
				buffer_selected = {
					fg = "#c5c9c5",
					bg = "#181616",
					bold = true,
					italic = true,
				},
				separator = {
					bg = "#181616",
					fg = "#c5c9c5",
				},
				separator_selected = {
					bg = "#181616",
					fg = "#c4746e",
				},
				separator_visible = {
					bg = "#181616",
					fg = "#c5c9c5",
				},
				indicator_selected = {
					bg = "#181616",
					fg = "#c4746e",
				},
				modified = {
					bg = "#181616",
					fg = "#c5c9c5",
				},
				modified_visible = {
					bg = "#181616",
					fg = "#c5c9c5",
				},
				modified_selected = {
					bg = "#181616",
					fg = "#c5c9c5",
				},
			},
		})
	end,
}
