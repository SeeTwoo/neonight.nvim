#!/usr/bin/env lua

if #arg ~= 1 then
  print("Usage: ./display_palette <palette name>")
  os.exit(1)
end

local palette = require(arg[1])

if not palette then
  print("Error : palette is nil")
  os.exit(1)
end

print("hex\t\tdecimal\t\tcolor\n\n")

for palette, color in pairs(palette) do
  local raw = tonumber(color:sub(2), 16)
  local r = (raw >> 16) & 0xFF
  local g = (raw >> 8) & 0xFF
  local b = raw & 0xFF

  io.write(tostring(color), "\t\t")
  io.write(tostring(r), ", ", tostring(g), ", ", tostring(b), "\t\t")
  io.write("\x1b[48;2;", tostring(r), ";", tostring(g), ";", tostring(b), "m  \x1b[0m\n")
end
