-- Encryption program by Steven Weinstein on 1-7-2022
-- Run command: lua ~/Desktop/mylualearning/cipher.lua
print('Encryption and Decryption program by Steven Weinstein Version Beta 0.1\nPress return to start')
io.read()
function strToBytes(str) -- encode
    local bytes = { str:byte(1, -1)}
    for i = 1, #bytes do
        bytes[i] = bytes[i] + 100
    end
    return table.concat(bytes, ',')
    end
function bytesToStr(str) -- decode
    local function gsub(c)return string.char(c - 100) end
    return str:gsub('(%d+),?', gsub)
end
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