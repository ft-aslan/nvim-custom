return {
    "MunifTanjim/prettier.nvim",
    enabled = true,
    opts = function(prettier, opts)
        --   opts.bin = 'prettier', -- or `'prettierd'` (v0.22+)
        --   opts.filetypes = {
        --     "css",
        --     "graphql",
        --     "html",
        --     "javascript",
        --     "javascriptreact",
        --     "json",
        --     "less",
        --     "markdown",
        --     "scss",
        --     "typescript",
        --     "typescriptreact",
        --     "yaml",
        --   },
        --   opts.["null-ls"] = {
        --     condition = function()
        --       return prettier.config_exists({
        --         -- if `false`, skips checking `package.json` for `"prettier"` key
        --         check_package_json = true,
        --       })
        --     end,
        --     runtime_condition = function(params)
        --       -- return false to skip running prettier
        --       return true
        --     end,
        --     timeout = 5000,
        --   }
    end
}
