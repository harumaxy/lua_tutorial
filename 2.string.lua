-- string module

local length = string.len "aaaaaa"
print(length)


Quote = "I am am I Iam am am"
local replaced = string.gsub(Quote, "I", "me")
print(replaced)

A = "aaaaaaaaaa password: hellomax BBBBBBBBBBBb"
local passwordIndex = string.find(A, "password")
print(passwordIndex)


