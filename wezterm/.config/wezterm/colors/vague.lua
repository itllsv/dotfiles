return {
  foreground = "#cdcdcd", -- fg from vague.nvim
  background = "#141415", -- bg from vague.nvim

  -- Cursor
  cursor_bg = "#7e98e8", -- hint color for cursor background
  cursor_fg = "#141415", -- bg for cursor foreground
  cursor_border = "#7e98e8", -- hint color for cursor border

  -- Selection
  selection_fg = "#cdcdcd", -- fg for selection text
  selection_bg = "#333738", -- visual for selection background

  -- Scrollbar thumb
  scrollbar_thumb = "#252530", -- line color

  -- Split lines
  split = "#878787", -- floatBorder for pane splits

  -- ANSI colors
  ansi = {
    "#141415", -- bg (black)
    "#d8647e", -- error (red)
    "#7fa563", -- plus (green)
    "#e0a363", -- number (yellow)
    "#6e94b2", -- keyword (blue)
    "#aeaed1", -- constant (magenta)
    "#90a0b5", -- operator (cyan)
    "#cdcdcd", -- fg (white)
  },
  brights = {
    "#252530", -- line (bright black)
    "#d8647e", -- error (bright red)
    "#7fa563", -- plus (bright green)
    "#f3be7c", -- warning (bright yellow)
    "#6e94b2", -- keyword (bright blue)
    "#aeaed1", -- constant (bright magenta)
    "#90a0b5", -- operator (bright cyan)
    "#cdcdcd", -- fg (bright white)
  },

  -- Tab bar styling
  tab_bar = {
    background = "#141415", -- bg
    active_tab = {
      bg_color = "#252530", -- line
      fg_color = "#cdcdcd", -- fg
      intensity = "Bold", -- matches vague.nvim's bold styling
    },
    inactive_tab = {
      bg_color = "#141415", -- bg
      fg_color = "#606079", -- comment
    },
    inactive_tab_hover = {
      bg_color = "#333738", -- visual
      fg_color = "#cdcdcd", -- fg
      italic = true, -- matches vague.nvim's italic styling
    },
    new_tab = {
      bg_color = "#141415", -- bg
      fg_color = "#606079", -- comment
    },
    new_tab_hover = {
      bg_color = "#333738", -- visual
      fg_color = "#cdcdcd", -- fg
      italic = true,
    },
  },
}
