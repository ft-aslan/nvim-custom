vim.api.nvim_exec('language en_US', true)
vim.opt.guifont = { "FiraCode NF", ":h11" }

-- vim.opt.wildchar = ("<M-j>"):byte()
-- vim.opt.wildcharm = vim.fn.char2nr(vim.api.nvim_replace_termcodes("<M-j>", true, true, true))
--vim.opt.wildcarm = "<C-j>"
--vim.keymap.set("n", "<M-j>", "<Tab>")
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.cursorline = true

vim.opt.smartindent = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

vim.o.mouse = 'a';
