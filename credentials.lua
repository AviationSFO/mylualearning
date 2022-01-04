--[[
    simple program to print name and age in formal form
]]
print("What is your first name?")
local firstname = io.read()
print("What is your last name?")
local lastname = io.read()
local fullname = firstname .. " " .. lastname
print("What is your age?")
local age = io.read()
local credentials = lastname .. ", " .. firstname .. ", " .. age -- appends to a variable in: ln, fn, age form
print(credentials)