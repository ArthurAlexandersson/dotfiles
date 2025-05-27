-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	keys = {
		{ "\\", ":Neotree reveal<CR>", desc = "NeoTree reveal", silent = true },
	},
	opts = {
		filesystem = {
			window = {
				position = "right", -- <----- set tree to right side
			},
		},
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)

		-- Auto-quit Neovim if Neo-tree is the last window
		vim.api.nvim_create_autocmd("BufEnter", {
			group = vim.api.nvim_create_augroup("NeoTreeAutoQuit", { clear = true }),
			callback = function()
				if #vim.api.nvim_list_wins() == 1 then
					local bufname = vim.api.nvim_buf_get_name(0)
					if bufname:match("neo%-tree") then
						vim.cmd("quit")
					end
				end
			end,
		})
	end,
}
