return {
  "glepnir/dashboard-nvim",
  event = "VimEnter",
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
  opts = {
    theme = 'hyper',
    config = {
      week_header = {
        enable = true,
      },
      shortcut = {
        { desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Apps',
          group = 'DiagnosticHint',
          action = 'Telescope app',
          key = 'a',
        },
        {
          desc = ' dotfiles',
          group = 'Number',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      },
    },
  }
  -- {
  --   theme = 'doom',
  --   config = {
  --     header = {}, --your header
  --     center = {
  --       {
  --         icon = ' ',
  --         icon_hl = 'Title',
  --         desc = 'Find File           ',
  --         desc_hl = 'String',
  --         key = 'b',
  --         keymap = 'SPC f f',
  --         key_hl = 'Number',
  --         action = 'lua print(2)'
  --       },
  --       {
  --         icon = ' ',
  --         desc = 'Find Dotfiles',
  --         key = 'f',
  --         keymap = 'SPC f d',
  --         action = 'lua print(3)'
  --       },
  --     },
  --     footer = {}  --your footer
  --   }
  -- }

}
