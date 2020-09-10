-- 前評価loop (while)
local i = 1
while (i <= 10) do
  print(i)
  i = i + 1
  if i == 8 then
    break
  end
end

-- 後評価loop (repeat)
-- repeat
--   io.write("Enter your guess : ")
--   local guess = io.read()
-- until tonumber(guess) == 15


-- for loop
-- init, end, step
for i = 1, 10, 2 do
  io.write(i, ',')
end
print()


-- array iterator (key, value)
local months = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}
for key, value in pairs(months) do
  print(key, value)
end

-- 実は配列じゃなくて table 型らしい
print(type(months))
-- function型
print(type(pairs(months)))
