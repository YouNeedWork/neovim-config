return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",
	auto_install = false,
	opts = {
		install_dir = vim.fn.stdpath("data") .. "/site",
	},
	config = function()
		local ensure_installed = {
			"c3",
			"zig",
			"php",
			"rust",
			"vimdoc",
			"javascript",
			"typescript",
			"c",
			"go",
			"lua",
			"jsdoc",
			"bash",
			"css",
			"kotlin",
		}

		require("nvim-treesitter").install(ensure_installed)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"c3",
				"zig",
				"php",
				"rust",
				"vimdoc",
				"javascript",
				"typescript",
				"c",
				"go",
				"lua",
				"jsdoc",
				"bash",
				"css",
				"kotlin",
			},
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
