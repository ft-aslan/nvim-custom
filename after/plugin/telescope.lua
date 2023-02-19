local actions = require("telescope.actions")
local fb_actions = require "telescope".extensions.file_browser.actions
local builtin = require("telescope.builtin")
local telescope = require("telescope").setup({
	defaults = {
		mappings = {
			n = {
				["<M-j>"] = actions.toggle_selection + actions.move_selection_worse,
				["<M-k>"] = actions.toggle_selection + actions.move_selection_better,
			},
			i = {
				["<M-j>"] = actions.toggle_selection + actions.move_selection_worse,
				["<M-k>"] = actions.toggle_selection + actions.move_selection_better,
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "ivy",
			-- disables netrw and use telescope-file-browser in its place
			hijack_netrw = true,
			mappings = {
				["i"] = {
					-- your custom insert mode mappings
				},
				["n"] = {
					-- your custom normal mode mappings

				},
			},
		},
	},
})
vim.keymap.set("n", "<C-space>", builtin.find_files, {})
vim.keymap.set("n", "<C-S-f>", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

require("telescope").load_extension("file_browser")
require'telescope'.load_extension('project')

vim.keymap.set("n", "<C-S-B>", "<cmd>Telescope file_browser<cr>")
