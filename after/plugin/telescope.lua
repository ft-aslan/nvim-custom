local actions = require("telescope.actions")
local fb_actions = require("telescope").extensions.file_browser.actions
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
		sorting_strategy = "ascending",
		laytout_strategy = "horizontal",
		layout_config = {
			horizontal = {
				prompt_position = "top",
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
--See `:help telescope.builtin`
vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>/", function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
        winblend = 10,
        previewer = false,
    }))
end, { desc = "[/] Fuzzily search in current buffer" })

vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

vim.keymap.set("n", "<C-S-f>", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<C-p>", builtin.find_files, {})

require("telescope").load_extension("file_browser")
require("telescope").load_extension("project")

vim.keymap.set("n", "<C-S-B>", "<cmd>Telescope file_browser<cr>")
