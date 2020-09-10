
-- r, w, a
-- r+, w+, a+ : 権限がちょっと強い

-- file オブジェクト
-- : コロン　luaでオブジェクトのメソッドを実行するには、 . ではなく : でアクセスする。
local file = io.open("test.txt", "w+")
file:write("random test \n")
file:write("SOME MORE TEXT")
file:seek("set", 0)

print(file:read("a*"))

file:close()

-- 次は追加モード (a+)
local file = io.open("test.txt", "a+")
file:write("random test \n")
file:write("SOME MORE TEXT")
file:seek("set", 0)

print(file:read("a*"))

file:close()
