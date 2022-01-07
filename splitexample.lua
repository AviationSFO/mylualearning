local example = "lua is great"
for i in string.gmatch(example, "%S+") do
   print(i)
end