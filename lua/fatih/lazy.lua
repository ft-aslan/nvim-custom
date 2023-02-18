local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({ 'folke/tokyonight.nvim',
    { 'nvim-telescope/telescope.nvim',  dependencies = { { 'nvim-lua/plenary.nvim' } } },
    { 'nvim-treesitter/nvim-treesitter' }, {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
        -- configurations go here
    },
}, 'gelguy/wilder.nvim', 'rcarriga/nvim-notify',
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            { 'williamboman/mason.nvim' }, -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    },
    { 'akinsho/toggleterm.nvim' }, { 'folke/neodev.nvim', config=function() 
        -- IMPORTANT: make sure to setup neodev BEFORE lspconfig
        require("neodev").setup({
            -- add any options here, or leave empty to use the default settings
        }) end}, 
    { 'folke/trouble.nvim' },
    { 'onsails/lspkind.nvim' }, { 'folke/which-key.nvim'},  { 'lewis6991/gitsigns.nvim' },
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    }, { 'akinsho/bufferline.nvim', dependencies = 'nvim-tree/nvim-web-devicons' },
    { 'nvim-tree/nvim-tree.lua',   dependencies = 'nvim-tree/nvim-web-devicons' },
    { 'nvim-lualine/lualine.nvim', dependencies = 'nvim-tree/nvim-web-devicons' }, 'tpope/vim-fugitive',
    'mbbill/undotree', 'folke/zen-mode.nvim', 'rebelot/kanagawa.nvim' })
