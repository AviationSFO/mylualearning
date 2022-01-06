-- To Do List By Steven Weinstein on 1-6-2022
file = io.open ("list.txt", "w")
file:write("aaaaaaaah")
file:close()
file = io.open ("~/Desktop/mylualearning/ToDoList/list.txt", "r")
print(file:read())
local contents = file:read()