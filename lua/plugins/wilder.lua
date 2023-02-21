return {
    "gelguy/wilder.nvim",
    opts = { modes = { ":", "/", "?" }, next_key = "<M-j>", previous_key = "<M-k>" },
    config = function(wilder, opts)
        -- wilder.set_option('renderer', wilder.popupmenu_renderer(
        --   wilder.popupmenu_border_theme({
        --      highlights = {
        --       border = 'Normal', -- highlight to use for the border
        --     },
        --     -- 'single', 'double', 'rounded' or 'solid'
        --     -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
        --     border = 'rounded',
        --    highlighter = wilder.basic_highlighter(),
        --    highlights = {
        --     accent = wilder.make_hl('WilderAccent', 'Pmenu', {{a = 5}, {a = 1}, {foreground = '#f4468f'}}),
        --   },
        --   left = {' ', wilder.popupmenu_devicons()},
        --   right = {' ', wilder.popupmenu_scrollbar()}})
        -- )
        -- )
    end
}
