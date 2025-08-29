return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	branch = "main",
	build = ":TSUpdate",
	opts = {
		install_dir = vim.fn.stdpath("data") .. "/site",
	},
	config = function()
		local ensure_installed =
			{
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
			}, vim.api.nvim_create_autocmd("User", {
				pattern = "TSUpdate",
				callback = function()
					require("nvim-treesitter.parsers").dyn = {
						install_info = {
							url = "https://github.com/17robots/tree-sitter-dyn",
							branch = "neovim",
							queries = "queries",
						},
					}
				end,
			})
		vim.filetype.add({ extension = { dyn = "dyn" } })
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
