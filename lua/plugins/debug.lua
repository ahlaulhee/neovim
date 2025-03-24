return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"jay-babu/mason-nvim-dap.nvim",
		"williamboman/mason.nvim",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end

		require("dapui").setup()
		-- Keybinds
		vim.keymap.set("n", "<F5>", function()
			require("dap").continue()
		end, { desc = "Start debugging" })
		vim.keymap.set("n", "<F10>", function()
			require("dap").step_over()
		end, { desc = "Step over" })
		vim.keymap.set("n", "<F11>", function()
			require("dap").step_into()
		end, { desc = "Step into" })
		vim.keymap.set("n", "<F12>", function()
			require("dap").step_out()
		end, { desc = "Step out" })
		vim.keymap.set("n", "<leader>k", function()
			require("dap").toggle_breakpoint()
		end, { desc = "Toggle breakpoint" })
		-- vim.keymap.set("n", "<leader>B", function()
		-- 	require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
		-- end, { desc = "Set conditional breakpoint" })
		vim.keymap.set("n", "<leader>dr", function()
			require("dap").repl.open()
		end, { desc = "Open Debug Console" })

		-- JavaScript/TypeScript Configuration
		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			port = 9229,
			executable = {
				command = "node",
				args = {
					os.getenv("HOME")
						.. "/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
					"9229",
				},
			},
		}

		dap.configurations.javascript = {
			{
				type = "pwa-node",
				request = "launch",
				name = "Launch Node.js",
				program = "${file}",
				cwd = vim.fn.getcwd(),
				sourceMaps = true,
				protocol = "inspector",
				console = "integratedTerminal",
			},
		}

		dap.configurations.typescript = dap.configurations.javascript

		-- Dotnet Configuration
		dap.adapters.coreclr = {
			type = "executable",
			command = os.getenv("HOME") .. "/.local/share/nvim/mason/packages/netcoredbg/netcoredbg",
			args = { "--interpreter=vscode" },
		}

		dap.configurations.cs = {
			{
				type = "coreclr",
				request = "launch",
				name = "Launch .NET Core",
				program = function()
					return vim.fn.input("Path to DLL: ", vim.fn.getcwd() .. "/bin/Debug/net7.0/", "file")
				end,
			},
		}
	end,
}
