return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			window = { position = "left" },
			event_handlers = {
				{
					event = "vim_buffer_enter",
					handler = function()
						if vim.bo.filetype == "neo-tree" then
							vim.cmd("setlocal nonumber")
						else
							vim.cmd("setlocal number")
						end
					end,
				},
			},
			filesystem = {
				follow_current_file = {
					enabled = true,
				},
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
					never_show = { ".git" },
				},
			},
		})
		vim.api.nvim_create_autocmd("VimEnter", {
			command = "set nornu nonu | Neotree toggle",
		})
		vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", {})
	end,
}
