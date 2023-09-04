return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim", config = function()
		end
		},
		{ "nvim-telescope/telescope-file-browser.nvim", build = function()
			require("telescope").load_extension("file_browser")
			vim.keymap.set("n", "<C-S-B>", "<cmd>Telescope file_browser<cr>")
		end
		},
		{ "nvim-telescope/telescope-project.nvim", build = function()
			require("telescope").load_extension("project")
		end
		} },
	opts = function(telescope, opts)
		local actions = require("telescope.actions")
		--local fb_actions = telescope.extensions.file_browser.actions

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
	keys = function(telescope, keys)
		local builtin = require("telescope.builtin")

		keys = {
			{
				"<leader>?",
				builtin.oldfiles,
				desc = "[?] Find recently opened files"
			},
			{
				"<leader><space>",
				builtin.buffers,
				desc = "[ ] Find existing buffers"
			},
			{
				"<leader>/",
				function()
					-- You can pass additional configuration to telescope to change theme, layout, etc.
					builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
						winblend = 10,
						previewer = false,
					}))
				end,
				desc = "[/] Fuzzily search in current buffer"
			}, {
			"<leader>?",
			builtin.oldfiles,
			desc = "[?] Find recently opened files"
		}
		, {
			"<leader>?",
			builtin.oldfiles,
			desc = "[?] Find recently opened files"
		},
			{
				"<leader>sf",
				builtin.find_files,
				desc = "[?] Find recently opened files"
			},
			{
				"<leader>sh",
				builtin.help_tags,
				desc = "[?] Find recently opened files"
			},
			{
				"<leader>sw",
				builtin.grep_string,
				desc = "[?] Find recently opened files"
			},
			{
				"<leader>sg",
				builtin.live_grep,
				desc = "[?] Find recently opened files"
			},
			{
				"<leader>sd",
				builtin.diagnostics,
				desc = "[?] Find recently opened files"
			},
			{
				"<leader>fb",
				builtin.buffers,
				desc = "[?] Find recently opened files"
			},
			{
				"<C-S-f>",
				function()
					builtin.grep_string({ search = vim.fn.input("Grep > ") })
				end,
				desc = "[?] Find recently opened files"
			},

			{
				"<C-p>",
				builtin.find_files,
				desc = "[?] Find recently opened files"
			}
		}
	end
}
