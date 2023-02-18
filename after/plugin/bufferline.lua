vim.opt.termguicolors = true
require('bufferline').setup({options = {
-- separator_style = 'thick' 
}})
vim.keymap.set("n","<leader>tn","<cmd>BufferLineMoveNext<cr>")
vim.keymap.set("n","<leader>tp","<cmd>BufferLineMovePrev<cr>")
--vim.keymap.set("n","<leader>", function() print("A: ") end)
