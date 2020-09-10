-- coroutine
-- 処理を移譲したり戻したりする。
-- coroutine.yield() : 一時中断。戻り値も返せる。resume()したらその下の行から再開

Co = coroutine.create(function ()
  for i = 1, 10, 1 do
    print(i)
    print(coroutine.status(Co))
    if i == 5 then coroutine.yield() end
  end
end)

print(coroutine.status(Co))
-- 始まる
coroutine.resume(Co)
-- i = 5 で停止して、一旦戻る
print(coroutine.status(Co))
-- また開始する
coroutine.resume(Co)
print(coroutine.status(Co))


-- suspended -> running -> suspended -> running -> dead


-- ファイルIOとかネットワークに使ったりするらしい？
