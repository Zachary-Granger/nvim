vim.pack.add({
	{ src = 'https://github.com/nvim-neotest/nvim-nio' },
	{ src = 'https://github.com/rcarriga/nvim-dap-ui' },
	{ src = 'https://github.com/mfussenegger/nvim-dap' }
})

local dap = require('dap')
local ui = require('dapui')

dap.adapters.godot = {
	type = 'server',
	host = '127.0.0.1',
	port = 6006,
}

dap.configurations.gdscript = {
	{
		type = 'godot',
		request = 'launch',
		name = 'Launch scene',
		project = '${workspaceFolder}',
		scene = 'main'
	},
}

ui.setup({
	icons = { expanded = "", collapsed = "", current_frame = "" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
	element_mappings= {},
	expand_lines = vim.fn.has("nvim-0.7") == 1,
  force_buffers = true,
	layouts = {
		{
			size = 0.25,
			position = 'left', -- can be 'left' or 'right'
			-- change the order of elements in the sidebar
			elements = {
				-- Provide IDs as strings or tables with "id" and "size" keys
				{
					id = 'breakpoints', size = 0.25 -- size can be float or integer > 1
				},
				{ id = 'watches', size = 0.25 },
				{ id = 'scopes', size = 0.25 },
				{ id = 'stacks', size = 0.25 },
			}
		}
	},
	floating = {
    max_height = nil,
    max_width = nil,
    border = "single",
    mappings = {
      ["close"] = { "q", "<Esc>" },
    },
  },
  controls = {
    enabled = vim.fn.exists("+winbar") == 1,
    element = "repl",
    icons = {
      pause = "",
      play = "",
      step_into = "",
      step_over = "",
      step_out = "",
      step_back = "",
      run_last = "",
      terminate = "",
      disconnect = "",
    },
  },
  render = {
    max_type_length = nil, -- Can be integer or nil.
    max_value_lines = 100, -- Can be integer or nil.
    indent = 1,
  },
})

-- Listeners
dap.listeners.before.attach.dapui_config = function()
	ui.open()
end
dap.listeners.before.launch.dapui_config = function()
	ui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	ui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	ui.close()
end

vim.fn.sign_define('DapBreakpoint', { text = '●', texthl = 'DapBreakpoint', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointCondition', { text = 'C', texthl = 'DapBreakpoint', linehl = '', numhl = '' })
vim.fn.sign_define('DapLogPoint', { text = 'L', texthl = 'DapLogPoint', linehl = '', numhl = '' })
vim.fn.sign_define('DapStopped', { text = '→', texthl = 'DapStopped', linehl = 'DapStopped', numhl = 'DapStopped' })
vim.fn.sign_define('DapBreakpointRejected', { text = 'R', texthl = 'DapBreakpoint', linehl = '', numhl = '' })

vim.keymap.set({ 'n', 'v' }, '<leader>du', function() ui.toggle({}) end, { desc = "Toggle Dap UI" })
