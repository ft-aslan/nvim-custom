return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim", config = function()
		end
		},
		{ "nvim-telescope/telescope-file-browser.nvim", config = function()
			require("telescope").load_extension("file_browser")
			vim.keymap.set("n", "<C-S-B>", "<cmd>Telescope file_browser<cr>")
		end
		},
		{ "nvim-telescope/telescope-project.nvim", config = function()
			require("telescope").load_extension("project")
		end
		} },
	opts = function(_, opts)
		local actions = require("telescope.actions")
		local fb_actions = require("telescope").extensions.file_browser.actions
		local builtin = require("telescope.builtin")

		opts.defaults = {
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
			}
		}
		opts.extensions = {
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
		}
	end,
	--See `:help telescope.builtin`
	keys = {
		{
			"<leader>?",
			require("telescope.builtin").oldfiles,
			desc = "[?] Find recently opened files"
		},
		{
			"<leader><space>",
			require("telescope.builtin").buffers,
			desc = "[ ] Find existing buffers"
		},
		{
			"<leader>/",
			function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end,
			desc = "[/] Fuzzily search in current buffer"
		}, {
		"<leader>?",
		require("telescope.builtin").oldfiles,
		desc = "[?] Find recently opened files"
	}
	, {
		"<leader>?",
		require("telescope.builtin").oldfiles,
		desc = "[?] Find recently opened files"
	},
		{
			"<leader>sf",
			require("telescope.builtin").find_files,
			desc = "[?] Find recently opened files"
		},
		{
			"<leader>sh",
			require("telescope.builtin").help_tags,
			desc = "[?] Find recently opened files"
		},
		{
			"<leader>sw",
			require("telescope.builtin").grep_string,
			desc = "[?] Find recently opened files"
		},
		{
			"<leader>sg",
			require("telescope.builtin").live_grep,
			desc = "[?] Find recently opened files"
		},
		{
			"<leader>sd",
			require("telescope.builtin").diagnostics,
			desc = "[?] Find recently opened files"
		},
		{
			"<leader>fb",
			require("telescope.builtin").buffers,
			desc = "[?] Find recently opened files"
		},
		{
			"<C-S-f>",
			function()
				require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
			end,
			desc = "[?] Find recently opened files"
		},

		{
			"<C-p>",
			require("telescope.builtin").find_files,
			desc = "[?] Find recently opened files"
		}








	}
}
