local dap, dapui, hydra = require("dap"), require("dapui"), require("hydra")

-- Setup Virtual Text
require("nvim-dap-virtual-text").setup({})

-----

require("dap-vscode-js").setup({
	-- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
	-- node_path = os.getenv("HOME") .. "/.nvm/versions/node/v16.14.0/bin/node",
	-- debugger_path = os.getenv("HOME") .. "/vscode-js-debug/",
	-- adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap

	-- debugger_cmd = { "js-debug-adapter" },
	adapters = { "pwa-node", "pwa-chrome", "node-terminal" },
})

for _, language in ipairs({ "typescript", "javascript" }) do
	require("dap").configurations[language] = {
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch file",
			port = 9228,
			program = "${file}",
			cwd = "${workspaceFolder}",
		},
		{
			type = "pwa-node",
			request = "attach",
			name = "Attach",
			processId = require("dap.utils").pick_process,
			cwd = "${workspaceFolder}",
		},
	}
end

for _, language in ipairs({ "typescriptreact", "javascriptreact" }) do
	require("dap").configurations[language] = {
		{
			type = "pwa-chrome",
			name = "Attach - Remote Debugging",
			request = "attach",
			program = "${file}",
			cwd = vim.fn.getcwd(),
			sourceMaps = true,
			protocol = "inspector",
			port = 9222,
			webRoot = "${workspaceFolder}",
		},
		{
			type = "pwa-chrome",
			name = "Launch Chrome",
			request = "launch",
			url = "http://localhost:3000",
		},
	}
end

-- for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/user/dap/configs/*.lua", true)) do
--   loadfile(ft_path)()
-- end

-- Signs
vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "▶", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointRejected", { text = "🚫", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointCondition", { text = "❓", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapLogPoint", { text = "💬", texthl = "", linehl = "", numhl = "" })

-- UI structure
dapui.setup({
	icons = { expanded = "▾", collapsed = "▸" },
	layouts = {
		{
			elements = {
				"scopes",
				"stacks",
			},
			size = 40,
			position = "left",
		},
		{
			elements = {
				"breakpoints",
				"watches",
				"console",
			},
			size = 40,
			position = "right",
		},
		{
			elements = {
				"repl",
			},
			size = 10,
			position = "bottom",
		},
	},
})

-- Events Listeners
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open({})
end

local hint = [[
 Nvim DAP
 _d_: Start/Continue  _j_: StepOver _k_: StepOut _l_: StepInto ^
 _bp_: Toogle Breakpoint  _bc_: Conditional Breakpoint ^
 _?_: log point ^
 _c_: Run To Cursor ^
 _h_: Show information of the variable under the cursor ^
 _x_: Stop Debbuging ^
 ^^                                                      _<Esc>_
]]

hydra({
	name = "DAP",
	mode = "n",
	body = ",hd",
	config = {
		color = "pink",
		invoke_on_body = true,
		hint = {
			border = "rounded",
			position = "bottom",
		},
	},
	heads = {
		-- flow
		{ "D", dap.continue },
		{
			"X",
			function()
				dap.terminate()
				dapui.close({})
				dap.clear_breakpoints()
			end,
			{ exit = true }
		},

		-- steps
		{ "L", dap.step_into },
		{ "J", dap.step_over },
		{ "K", dap.step_out, { desc = "Steps" } },

		{ "H", dapui.eval },
		{ "C", dap.run_to_cursor, { desc = "More" } },

		{ "Bp", dap.toggle_breakpoint },
		{
			"Bc",
			function()
				vim.ui.input({ prompt = "Condition: " }, function(condition)
					dap.set_breakpoint(condition)
				end)
			end,
		},
		{
			"G",
			function()
				vim.ui.input({ prompt = "Log: " }, function(log)
					dap.set_breakpoint(nil, nil, log)
				end)
			end,
			{ desc = "break/Log Point" },
		},
	},
	{ "<Esc>", nil, { exit = true } },
})
