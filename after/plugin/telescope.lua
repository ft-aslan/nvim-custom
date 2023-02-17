local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local telescope = require('telescope').setup({
	defaults = {
		mappings = {
			n = {
				["<M-j>"] = actions.toggle_selection + actions.move_selection_better,
				["<M-k>"] = actions.toggle_selection + actions.move_selection_worse
			}
		}
	}
}
)
vim.keymap.set('n', '<C-space>', builtin.find_files, {})
vim.keymap.set('n', '<C-F>', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

