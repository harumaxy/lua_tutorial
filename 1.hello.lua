print("hello")

-- #arr : 配列の長さを返す
Name = 'MASAHARU'
io.write("Size of string ", #Name, "\n")
A = {1,2,3}
io.write(#A)

-- io.write(args...) : printf 相当
-- print()との違いは、改行文字を入れないと改行されないこと




-- 基本的なデータ型
-- number
-- string
  -- "", ''
  -- long string [[]]
-- boolean
-- nil


-- math operator
-- +, -, *, /, %
-- +=, -= ...

-- Math functions
-- math  モジュールの関数として使える
-- floor, ceil, max, min, sin, cos, log, log10, pow, sqrt, random ...

-- 1引数 & 2引数 & seed
math.randomseed(os.time())
print(math.random(10))
print(math.random(80, 100))


-- .. : 文字列を連結(concat)
local a = [[
  aaa
  bbb
  ccc
]]
local b = 'ddd'

local longString = a .. b
print(longString)

-- 何も代入してない変数は nil を返す
io.write(type(madeUp), '\n')


-- format string

print(string.format("PI = %.10f", math.pi))


-- 比較演算子
-- != が ~= 名の以外は普通
-- and , or

print(true and false)
print(true ~= false)


-- if
local age = 13
if age < 16 then 
  print("YOU can go to school")
elseif (age <= 16) and (age < 18) then
  print("you can drive")
else
  print("you can vote")
end

-- 変数は、global なら大文字(他のファイルからも使える)、local なら小文字にするのが望ましい
-- local 演算子をつけると、そのスコープ内でしか使えなくなる
local localVal = 1
GlobalVal = 1

-- tostring : 何でも文字列にする
print(tostring(not true))