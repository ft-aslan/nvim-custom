local wezterm = require 'wezterm'
local actions = wezterm.action
return {
  default_prog = { 'pwsh', },
  hide_tab_bar_if_only_one_tab = true,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,

  },
  keys = {
       -- paste from the clipboard
       { key = 'v', mods = 'CTRL', action = actions.PasteFrom 'Clipboard' },
  }
}
