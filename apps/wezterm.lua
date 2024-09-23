local wezterm = require("wezterm")
local act = wezterm.action

local config = wezterm.config_builder()

config.automatically_reload_config = true

config.window_background_opacity = 0.7

config.font = wezterm.font_with_fallback {
  "JetBrainsMono Nerd Font"
}

config.use_ime = true
check_for_updates = false
audible_bell = "Disabled"

config.mouse_bindings = {
  {
    event = {Down = {streak = 1, button = 'Right'}},
    mods = 'NONE',
    action = act.PasteFrom 'Clipboard',
  },
}

config.color_scheme = 'Darktooth(base16)'

return config
