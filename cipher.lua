-- Encryption program by Steven Weinstein on 1-8-2022
-- Run command: lua ~/Desktop/mylualearning/cipher.lua
print('Encryption and Decryption program by Steven Weinstein Version Beta 0.2\nPress return to start')
io.read()
function strToBytes(str) -- encode
    local bytes = { str:byte(1, -1)}
    for i = 1, #bytes do
        bytes[i] = bytes[i] + 3
    end
    -- retun table.concat(bytes, ',')
    table = table.concat(bytes, ',')
    local function gsub(c)return string.char(c) end
    return table:gsub('(%d+),?', gsub)
    end
function bytesToStr(str) -- decode
    local bytes = { str:byte(1, -1)}
    for i = 1, #bytes do
        bytes[i] = bytes[i] - 3
    end
    -- retun table.concat(bytes, ',')
    table = table.concat(bytes, ',')
    local function gsub(c)return string.char(c) end
    return table:gsub('(%d+),?', gsub)
    end

    --     local function gsub(c)
--         string = { str:byte(1, -1)}
--         print(string)
--         return string.char(c - 3) 
--     end
--     return str:gsub('(%d+),?', gsub)
-- end
function cipher ()
    print("What would you like to cipher: ")
    local text = io.read()
    local textbyte = strToBytes(text)
    print("Your ciphered text is: " .. textbyte)
end
function plain ()
    print("What would you like to de cipher: ")
    local text = io.read()
    local textbyte = bytesToStr(text)
    print("Your plain text is: " .. textbyte)
end
print("Would you like to cipher or plain text? Enter one of the options below to chose.\n1 - Cipher\n2 - Plain")
act = io.read()
if act == "1" then
    cipher()
elseif act == "2" then
    plain()
end