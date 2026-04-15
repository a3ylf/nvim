return {
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
	--xd
	{
		"eandrju/cellular-automaton.nvim",
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					border = "rounded",
					icons = {
						package_installed = "👍",

						package_uninstalled = "👎",
					},
				},
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"black",
					"mypy",
					"pylint",
					"stylua",
				},
			})
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				automatic_installation = true,
				ensure_installed = { "lua_ls", "gopls", "clangd" },
				automatic_enable = true,
			})
		end,
	},

	--OutputPanel
	{
		"mhanberg/output-panel.nvim",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("output_panel").setup({
				max_buffer_size = 5000, -- default
			})
		end,
		cmd = { "OutputPanel" },
		keys = {
			{
				"<leader>o",
				vim.cmd.OutputPanel,
				mode = "n",
				desc = "Toggle the output panel",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },

		config = function() end,
	},
}
