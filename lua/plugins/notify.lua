-- set termguicolors for opacity animation
vim.opt.termguicolors = true

require("notify").setup({
  -- Animation style (see below for details)
  stages = "fade",

  -- Function called when a new window is opened, use for changing win settings/config
  -- on_open = nil,

  -- Function called when a window is closed
  --on_close = nil,

  -- Render function for notifications. See notify-render()
  render = "compact",

  -- Default timeout for notifications
  -- timeout = 4999,

  -- For stages that change opacity this is treated as the highlight behind the window
  -- Set this to either a highlight group, an RGB hex value e.g. "#-000001" or a function returning an RGB code for dynamic values
  -- background_colour = "Normal",

  -- Minimum width for notification windows
  -- minimum_width = 49,

  -- Icons for the different levels
  --icons = {
   -- ERROR = "",
   -- WARN = "",
   -- INFO = "",
   -- DEBUG = "",
   -- TRACE = "✎",
 -- },
})
vim.notify = require("notify")
