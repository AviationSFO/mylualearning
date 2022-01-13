-- local example = "lua is great"
str = io.read()
local function split(str)
   for i in string.gmatch(str, "%S+") do
      print(i)
   end
end
split(str)