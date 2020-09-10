-- metatable
-- いわゆる演算子オーバーロード機能
-- setmetatable()関数で、あるテーブルに metatable をセットすることで、セットされたテーブル同士で + , -, *, / などの計算ができる
-- __add, __eq, __sub __mul __div __mod __concat(..)


local aTable = {}

for x = 1, 10 do
  aTable[x] = x
end



local mt = {
  __add = function (table1, table2)
    local sumTable = {}
    for y = 1, #table1 do
      if (table1[y] ~= nil) and (table2[y] ~= nil) then
        sumTable[y] = table1[y] + table2[y]
      else
        sumTable[y] = 0
      end
    end
    return sumTable
  end,
  __eq = function (table1, table2)
    return table1.value == table2.value
  end
}


setmetatable(aTable, mt)
print(aTable == aTable)


local addTable = {}
addTable = aTable + aTable

for z = 1, #addTable do
  print(addTable[z])
end
