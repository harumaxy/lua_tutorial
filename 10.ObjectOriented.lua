-- Lua はオブジェクト指向言語ではないので、 Class を定義することはできないらしい。
-- だが、テーブルとメタテーブルを使って模倣することができる

Animal = {height=0, weight=0, name="No Name", sound="No Sound"}

function Animal:new(height, weight, name, sound)
  -- ここのsetmetatable()は、空のテーブルに初期値を追加してるだけ
  setmetatable({}, Animal)
  self.height = height
  self.weight = weight
  self.name = name
  self.sound = sound
  return self
end


function Animal:toString()
  local animalStr = string.format("%s weight %.1f lbs, is %.1f in tall and says %s", self.name, self.weight, self.height, self.sound)
  return animalStr
end

local spot = Animal:new(10, 15, "Spot", "Woof")
print(spot.weight)
print(spot:toString())
-- オブジェクトの型自体は table 型
print(type(spot))

for key, value in pairs(spot) do
  print(key, value)
end
-- テーブルにプロパティ、メソッド名をキーにして関数と値が入ってるだけ
-- weight  15
-- height  10
-- sound   Woof
-- name    Spot
-- new     function: 0x7feb4ad07d40
-- toString        function: 0x7feb4ad08ce0



-- メソッドオーバーライド
Cat = Animal:new()

function Cat:new(height, weight, name, sound, favFood )
  setmetatable({}, Animal)
  self.height = height
  self.weight = weight
  self.name = name
  self.sound = sound
  self.favFood = favFood
  return self
end

function Cat:toString()
  local animalStr = string.format("%s weight %.1f lbs, is %.1f in tall and says %s, favFood is %s", self.name, self.weight, self.height, self.sound, self.favFood)
  return animalStr
end


-- . vs :
-- funciton 定義には、名前に . と : が使える
  -- . => モジュール。関数型プログラミング
  -- : => メソッド。オブジェクト指向プログラミング
    -- .との違いとして、selfが使える
      -- 多分、self.xxx とすると `ObjTable[xxx]` のエイリアスになる
