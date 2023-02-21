return {
	"jose-elias-alvarez/null-ls.nvim",
	keys = {
		{ "<M-F>", function()
			vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
		end }
	},
	opts = function(null_ls, opts)
		opts.sources = {
			--    null_ls.builtins.formatting.stylua,
			--    null_ls.builtins.diagnostics.eslint,
			require("null-ls").builtins.formatting.prettier,
			require("null-ls").builtins.formatting.stylua,
		}
	end,
	config = function(null_ls, opts)
		--       local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
		-- local event = "BufWritePre" -- or "BufWritePost"
		--  local async = event == "BufWritePost"
		--
		--null_ls.setup({
		-- on_attach = function(client, bufnr)
		--     if client.supports_method("textDocument/formatting") then
		--         vim.keymap.set("n", "<M-F>", function()
		--             vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
		--         end, { buffer = bufnr, desc = "[lsp] format" })
		--
		--         -- format on save
		--         vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
		--         vim.api.nvim_create_autocmd(event, {
		--             buffer = bufnr,
		--             group = group,
		--             callback = function()
		--                vim.lsp.buf.format({ bufnr = bufnr, async = async })
		--             end,
		--             desc = "[lsp] format on save",
		--         })
		--     end
		--
		--     if client.supports_method("textDocument/rangeFormatting") then
		--         vim.keymap.set("x", "<Leader>f", function()
		--             vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
		--         end, { buffer = bufnr, desc = "[lsp] format" })
		--     end
		-- end,

		--})
	end
}
