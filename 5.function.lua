-- 型推論される
local function getSum(num1, num2)
  return num1 + num2
end
print(getSum(1, 2))


-- 複数値返せる
local function multiNum()
  return 1, 2
end

local a, b = multiNum()


-- 可変数引数
local function getSumMore(...)
  local sum = 0
  print(...)
  print(getSum(...))
  for k, v in pairs{...} do
    sum = sum + v
  end
  return sum
end

print(getSumMore(1,2,3,4,5))

-- ... の正体
  -- ... を関数に適用すると、 1, 2, ... を適用したのと同じ状態になる
    -- はみ出た部分は無視される
  -- type(...) = number
  -- print(...) = 1 2 3 4 5
  -- getSum(...) = 1 + 2 = 3

  -- {...} にすると、table型になる


-- 無名関数
-- callback
local anonymouse = function (x) return x * 2 end
print(anonymouse(5))
local clousure = function (callback) return callback(100) end
print(clousure(anonymouse))

-- 変数に関数を入れたり、関数に関数を渡したり
