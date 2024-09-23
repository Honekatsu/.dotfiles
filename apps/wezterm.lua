local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.automatically_reload_config = true

config.window_background_opacity = 0.7

config.font = wezterm.font_with_fallback {
  "JetBrainsMono Nerd Font"
}

config.use_ime = true
check_for_updates = false
audible_bell = "Disabled"

config.color_scheme = 'Darktooth(base16)'

return config
