-- Add the config directory to package.path
NVIM_DIRECTORY = ";" .. os.getenv("HOME") .. "/.config/nvim/?.lua"
package.path = package.path .. NVIM_DIRECTORY

require('options')
require('keybinds')
require('colourscheme')

require('plugins.oil')
require('plugins.lspconfig')
require('plugins.dap')
-- require('plugins.fzf')
require('plugins.whichkey')
require('plugins.blink')
require('plugins.treesitter')
require('plugins.autopairs')
require('plugins.mason')
require('plugins.plenary')
require('plugins.typescript-tools')
require('plugins.rainbow-delimiters')
require('plugins.indent-blankline')
require('plugins.telescope')

-- setup to automatically make godot projects listen to the godot pipe
local is_godot_project = string.find(vim.fn.getcwd(), '/home/kingpine/Documents/godot/')
local is_server_running = vim.uv.fs_stat('/tmp/godot.pipe')
if is_godot_project and not is_server_running then
	vim.fn.serverstart('/tmp/godot.pipe')
end
