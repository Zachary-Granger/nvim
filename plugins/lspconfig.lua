-- See list of LSP's here, which need to be installed through the package manager (yay) in order to be enabled
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

vim.pack.add({
	{ src = 'https://github.com/neovim/nvim-lspconfig' }
})

vim.lsp.config('gdscript', {
	name = 'godot',
	cmd = vim.lsp.rpc.connect('127.0.0.1', 6005)
})

-- Add vim to runtime so that lua doesn't throw a bunch of unnecessary warnings
vim.lsp.config('lua_ls', {
	settings = {
		Lua = {
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true)
			}
		}
	}
})

-- Java config
-- vim.lsp.config("jdtls", {
-- 	cmd = {
--
-- 		-- 💀
-- 		"java", -- or '/path/to/java17_or_newer/bin/java'
-- 		-- depends on if `java` is in your $PATH env variable and if it points to the right version.
--
-- 		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
-- 		"-Dosgi.bundles.defaultStartLevel=4",
-- 		"-Declipse.product=org.eclipse.jdt.ls.core.product",
-- 		"-Dlog.protocol=true",
-- 		"-Dlog.level=ALL",
-- 		"-Xmx1g",
-- 		"--add-modules=ALL-SYSTEM",
-- 		"--add-opens",
-- 		"java.base/java.util=ALL-UNNAMED",
-- 		"--add-opens",
-- 		"java.base/java.lang=ALL-UNNAMED",
--
-- 		-- 💀
-- 		"-jar",
-- 		vim.fn.stdpath("data") .. package.config:sub(1,1) .. "mason" .. package.config:sub(1,1) .. "packages" .. package.config:sub(1,1) .. "jdtls" .. package.config:sub(1,1) .. "plugins" .. package.config:sub(1,1) .. "org.eclipse.equinox.launcher_1.7.100.v20251111-0406.jar",
-- 		-- Must point to the                                                     Change this to
-- 		-- eclipse.jdt.ls installation                                           the actual version
--
-- 		-- 💀
-- 		"-configuration",
-- 		vim.fn.stdpath("data") .. package.config:sub(1,1) .. "mason" .. package.config:sub(1,1) .. "packages" .. package.config:sub(1,1) .. "jdtls" .. package.config:sub(1,1) .. "config_" .. (os_name == "Windows_NT" and "win" or os_name == "Linux" and "linux" or "mac"),
-- 		-- eclipse.jdt.ls installation            Depending on your system.
--
-- 		-- 💀
-- 		-- See `data directory configuration` section in the README
-- 		"-data",
-- 		workspace_dir,
-- 	},
--
-- 	-- 💀
-- 	-- This is the default if not provided, you can remove it. Or adjust as needed.
-- 	-- One dedicated LSP server & client will be started per unique root_dir
-- 	root_dir = vim.fs.root(0,{ ".git", "mvnw", "gradlew" }),
--
-- 	-- Here you can configure eclipse.jdt.ls specific settings
-- 	-- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
-- 	-- for a list of options
-- 	settings = {
-- 		java = {},
-- 	},
--
-- 	-- Language server `initializationOptions`
-- 	-- You need to extend the `bundles` with paths to jar files
-- 	-- if you want to use additional eclipse.jdt.ls plugins.
-- 	--
-- 	-- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
-- 	--
-- 	-- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
-- 	init_options = {
-- 		bundles = {},
-- 	},
-- })

vim.lsp.enable({ 'gdscript', 'gdshader_lsp', 'lua_ls', 'jdtls' })
