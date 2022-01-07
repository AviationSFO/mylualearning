-- To Do List By Steven Weinstein on 1-7-2022
-- Run command: lua ~/Desktop/mylualearning/ToDoList/main.lua
go = true
-- contents = {}
file = io.open("list.txt", "r+")
print('To Do List by Steven Weinstein Version Beta 0.1.1\nPress return to start')
io.read()
function main ()
    print("Enter one of the numbers below coresponding to their option\nOptions:\n1 - Read your list\n2 - Append to your list\n3 - Clear your list\n4 - Save and quit")
    option = io.read()
    if option == "1" then
        file = io.open("list.txt", "r")
        contents = file:read("*a")
        if contents == nil or contents == "" then
            contents = "Empty"
        end
        print("Your list is:" .. "\n" .. contents)
        file:close()
    elseif option == "2" then
        file = io.open("list.txt", "a")
        print("What would you like to add:")
        local append = io.read()
        local append = append .. "\n"
        file:write(append)
        local append = nil
    elseif option == "3" then
        file = io.open("list.txt", "w")
        file:write("")
        file:close()
        print("Cleared your list")
    elseif option == "4" then
        go = false
        print("Saving...")
        print("Quiting...")
    end
end

while go == true do 
    main()
end