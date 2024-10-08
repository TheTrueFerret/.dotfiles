local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'carbonfox'

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.default_prog = { 'powershell.exe' }

return config
