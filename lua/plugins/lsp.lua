local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	"tsserver",
})
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<M-k>"] = cmp.mapping.select_prev_item(cmp_select),
	["<M-j>"] = cmp.mapping.select_next_item(cmp_select),
	["<M-i>"] = cmp.mapping.confirm({ select = true }),
	["<C-space>"] = cmp.mapping.confirm(),
	["<C-y>"] = cmp.mapping.confirm(),
})
lsp.setup_nvim_cmp({
	mapping = cmp_mappings,
	formatting = {
		format = function(entry, vim_item)
			if vim.tbl_contains({ "path" }, entry.source.name) then
				local icon, hl_group = require("nvim-web-devicons").get_icon(entry:get_completion_item().label)
				if icon then
					vim_item.kind = icon
					vim_item.kind_hl_group = hl_group
					return vim_item
				end
			end
			local cmp_kinds = {
				Text = "  ",
				Method = "  ",
				Function = "  ",
				Constructor = "  ",
				Field = "  ",
				Variable = "  ",
				Class = "  ",
				Interface = "  ",
				Module = "  ",
				Property = "  ",
				Unit = "  ",
				Value = "  ",
				Enum = "  ",
				Keyword = "  ",
				Snippet = "  ",
				Color = "  ",
				File = "  ",
				Reference = "  ",
				Folder = "  ",
				EnumMember = "  ",
				Constant = "  ",
				Struct = "  ",
				Event = "  ",
				Operator = "  ",
				TypeParameter = "  ",
			}
			vim.cmd("highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080")
			vim.cmd("highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6")
			vim.cmd("highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6")
			vim.cmd("highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE")
			vim.cmd("highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE")
			vim.cmd("highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE")
			vim.cmd("highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0")
			vim.cmd("highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0")
			vim.cmd("highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4")
			vim_item.kind = (cmp_kinds[vim_item.kind] or "") .. vim_item.kind
			return vim_item
			--return require('lspkind').cmp_format({ with_text = true })(entry, vim_item)
		end,
	},
})

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = "",
		warn = "",
		hint = "",
		info = "",
	},
})
lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "<leader>rn", function()
		vim.lsp.buf.rename()
	end, { buffer = bufnr, remap = false, desc = "[R]e[n]ame" })
	vim.keymap.set("n", "<leader>ca", function()
		vim.lsp.buf.code_action()
	end, { buffer = bufnr, remap = false, desc = "[C]ode [A]ction" })
	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, { buffer = bufnr, remap = false, desc = "[G]oto [D]efinition" })
	vim.keymap.set("n", "gr", function()
		require("telescope.builtin").lsp_references()
	end, { buffer = bufnr, remap = false, desc = "[G]oto [R]eferences" })
	vim.keymap.set("n", "gI", function()
		vim.lsp.buf.implementation()
	end, { buffer = bufnr, remap = false, desc = "[G]oto [I]mplementation" })
	vim.keymap.set("n", "<leader>D", function()
		vim.lsp.buf.type_definition()
	end, { buffer = bufnr, remap = false, desc = "Type [D]efinition" })
	vim.keymap.set("n", "<leader>ds", function()
		require('telescope.builtin').lsp_document_symbols()
	end, { buffer = bufnr, remap = false, desc = "[D]ocument [S]ymbols" })
	vim.keymap.set("n", "<leader>ws", function()
        require('telescope.builtin').lsp_dynamic_workspace_symbols()
	end, { buffer = bufnr, remap = false, desc = "[W]orkspace [S]ymbols" })

	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, { buffer = bufnr, remap = false, desc = "Hover Documentation" })
	vim.keymap.set("n", "<C-k>", function()
		vim.lsp.buf.signature_help()
	end, { buffer = bufnr, remap = false, desc = "Signature Documentation" })


	vim.keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end, { buffer = bufnr, remap = false, desc = "" })
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_next()
	end, { buffer = bufnr, remap = false, desc = "" })
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_prev()
	end, { buffer = bufnr, remap = false, desc = "" })

	-- Create a command `:Format` local to the LSP buffer
	vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
		vim.lsp.buf.format()
	end, { desc = "Format current buffer with LSP" })
end)
lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
})


