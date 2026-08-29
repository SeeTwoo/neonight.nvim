--- little note : bg is for background and fg foreground
---
--- color names try to be |       comments give examples
--- objective description |
--- of what the color
--- applies to
---
---@class Palette
local ret = {
  bg = "#000717",             --regular background
  bg_dark = "#000717",        --background in inactive window
  bg_highlight = "#000717",   --background for current line

  fg = "#f0f8ff",             --regular foreground
  fg1 = "#ffc8e6",            --fg for function and methods name
  fg2 = "#f0f8ff",            --fg for operators
  fg3 = "#f0f8ff",            --fg for regexes
  fg4 = "#f0f8ff",            --bg for lsp inlay hints
  fg5 = "#f993ca",            --characters and strings
  fg6 = "#ccfdfd",            --fg for healthSuccess
  fg7 = "#f0f8ff",            --foo
  fg8 = "#850a4a",            --fg for treesitter keyword
  fg9 = "#f7768e",            --fg for replacement text highlighing or treesitter builtin variable names (this)
  fg10 = "#1abc9c",           --fg for treesitter markup link

  fg_pop1 = "#20e5e5",        --fg for types
  fg_pop2 = "#4d092c",        --fg fork keywords and preproc
  fg_pop3 = "#ee198b",        --fg for statements

  fg_accent = "#ccfdfd",      --various accent colors (current line number, matching parenthesis...)
  fg_accent2 = "#e0af68",     --things needing extra attention like the keyword TODO, FIXME...

  fg_dim1 = "#545c7e",        --fg for NonText and SpecialKey
  fg_dim2 = "#286395",        --fg for Conceal and quickfix line numbers
  fg_dim3 = "#a9b1d6",        --mode messages (-- INSERT --) and punctuation
  fg_dim4 = "#3b4261",        --dimmed stuff like line number
  
  comment = "#4782b4",        --fg for comments
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
