return {
    "akinsho/bufferline.nvim",
    name = "bufferline",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function(plugin, opts)
        vim.opt.termguicolors = true
        vim.keymap.set("n", "<leader>tn", "<cmd>BufferLineMoveNext<cr>")
        vim.keymap.set("n", "<leader>tp", "<cmd>BufferLineMovePrev<cr>")
    end
}
