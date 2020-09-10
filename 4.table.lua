-- table
-- key value 的なコンテナ
-- 配列として使われることも

-- グローバルモジュールの table をシャドウイングすると関数が使えなくなるので避ける
local myTable = {}

-- 0番目になんか入れても、長さにカウントされない
table[0] = 1
print(table[0])

-- # でアイテムの数を図れる
table[1] = 1
print(#table)


for i = 1, 10, 1 do
  myTable[i] = i
end

local joined = table.concat(myTable, ", ")
print(joined)

-- 2D table
-- table の要素に table {} リテラルを入れるとできる

local multiTable = {}
for i = 0, 9 do
  multiTable[i] = {}
  for j = 0, 9 do
    multiTable[i][j] = tostring(i) .. tostring(j)
  end
end

print(multiTable[5][5])
