local wezterm = require 'wezterm'
local actions = wezterm.action
return {
  default_prog = { 'pwsh', },
  --font = wezterm.font 'FiraCode NF',
  --font_size = 12.0,
  hide_tab_bar_if_only_one_tab = true,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,

  },
  allow_win32_input_mode = false,
  window_close_confirmation = 'NeverPrompt',
  colors = {
    cursor_bg = "yellow"
  },
  keys = {
    -- paste from the clipboard
    { key = 'F', mods = 'CTRL|SHIFT', action = wezterm.action.DisableDefaultAssignment },
    { key = 'v', mods = 'CTRL',       action = actions.PasteFrom 'Clipboard' },
    {
      key = 'F10',
      action = wezterm.action.ToggleFullScreen,
    },
  }
}
