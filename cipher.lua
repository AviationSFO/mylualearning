-- Encryption program by Steven Weinstein on 1-8-2022
-- Run command: lua ~/Desktop/mylualearning/cipher.lua
print('Encryption and Decryption program by Steven Weinstein Version 1.0\nPress return to start')
io.read()
function strToBytes(str) -- encode
    local bytes = { str:byte(1, -1)}
    for i = 1, #bytes do
        if bytes[i] == 32 then
            local incldudesSpace = true
        elseif bytes[i] == 120 then
            bytes[i] = 97
        elseif bytes[i] == 121 then
            bytes[i] = 98
        elseif bytes[i] == 122 then
            bytes[i] = 99
        elseif bytes[i] == 88 then
            bytes[i] = 65
        elseif bytes[i] == 89 then
            bytes[i] = 66
        elseif bytes[i] == 90 then
            bytes[i] = 67
        elseif bytes[i] == 44 then
            bytes[i] = 44
        elseif bytes[i] == 46 then
            bytes[i] = 46
        elseif bytes[i] == 33 then
            bytes[i] = 33
        elseif bytes[i] == 47 then
            bytes[i] = 47
        else
            bytes[i] = bytes[i] + 3
        end
    end
    table = table.concat(bytes, ',')
    local function gsub(c)
        return string.char(c) 
    end
    return table:gsub('(%d+),?', gsub)
    end
function bytesToStr(str) -- decode
    local bytes = { str:byte(1, -1)}
    for i = 1, #bytes do
        if bytes[i] == 32 then
            local incldudesSpace = true
        elseif bytes[i] == 97 then
            bytes[i] = 120
        elseif bytes[i] == 98 then
            bytes[i] = 121
        elseif bytes[i] == 99 then
            bytes[i] = 122
        elseif bytes[i] == 65 then
            bytes[i] = 88
        elseif bytes[i] == 66 then
            bytes[i] = 89
        elseif bytes[i] == 67 then
            bytes[i] = 90
        elseif bytes[i] == 44 then
            bytes[i] = 44
        elseif bytes[i] == 46 then
            bytes[i] = 46
        elseif bytes[i] == 33 then
            bytes[i] = 33
        elseif bytes[i] == 47 then
            bytes[i] = 47
        else
            bytes[i] = bytes[i] - 3
        end
    end
    table = table.concat(bytes, ',')
    local function gsub(c)
        return string.char(c)
    end
    return table:gsub('(%d+),?', gsub)
end

function cipher ()
    io.write("What would you like to cipher: ")
    local text = io.read()
    local textbyte = strToBytes(text)
    print("Your ciphered text is: " .. textbyte)
end
function plain ()
    io.write("What would you like to de cipher: ")
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