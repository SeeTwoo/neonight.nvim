--- little note : bg is for background and fg foreground
---
--- color names try to be |       comments give examples
--- objective info        |
---
---@class Palette
local ret = {
  bg = "#24283b",             --regular background
  bg_dark = "#1f2335",        --background in inactive window
  bg_highlight = "#292e42",   --background for current line

  fg = "#c0caf5",             --regular foreground
  fg1 = "#7aa2f7",            --fg for function and methods name
  fg2 = "#89ddff",            --fg for operators
  fg3 = "#b4f9f8",            --fg for regexes
  fg4 = "#394b70",            --bg for lsp inlay hints
  fg5 = "#9ece6a",            --characters and strings
  fg6 = "#73daca",            --fg for healthSuccess
  fg7 = "#ff007c",            --foo
  fg8 = "#9d7cd8",            --fg for treesitter keyword
  fg9 = "#f7768e",            --fg for replacement text highlighing or treesitter builtin variable names (this)
  fg10 = "#1abc9c",           --fg for treesitter markup link

  fg_pop1 = "#2ac3de",        --fg for types
  fg_pop2 = "#7dcfff",        --fg fork keywords and preproc
  fg_pop3 = "#bb9af7",        --fg for statements

  fg_accent = "#ff9e64",      --various accent colors (current line number, matching parenthesis...)
  fg_accent2 = "#e0af68",     --things needing extra attention like the keyword TODO, FIXME...

  fg_dim1 = "#545c7e",        --fg for NonText and SpecialKey
  fg_dim2 = "#737aa2",        --fg for Conceal and quickfix line numbers
  fg_dim3 = "#a9b1d6",        --mode messages (-- INSERT --) and punctuation
  fg_dim4 = "#3b4261",        --dimmed stuff like line number
  
  comment = "#565f89",        --fg for comments
  terminal_black = "#414868", --read the code if you are interested in this, it does not look interesting to me

  git = {
    add = "#449dab",
    change = "#6183bb",
    delete = "#914c54",
  },

  --used sparsely in some plugins
  fg11 = "#0db9d7",
  green2 = "#41a6b5",
  red1 = "#db4b4b",
}
return ret
