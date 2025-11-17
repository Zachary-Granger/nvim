vim.pack.add({
	{ src = 'https://github.com/mfussenegger/nvim-dap' }
})

local dap = require('dap')
dap.adapters.godot = {
	type = 'server',
	host = '127.0.0.1',
	port = 6006,
}

dap.configurations.gdscript = {
	{
		type = 'godot',
		request = 'Launch',
		name = 'Launch scene',
		project = '${workspaceFolder}',
		launch_scene = true
	},
}
