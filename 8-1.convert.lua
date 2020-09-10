-- module とは
-- 関数と変数を詰め合わせたセット = ライブラリ
-- 再利用可能なコード
-- ファイル名 = モジュール名


-- module のルール
-- 1. local table を用意
-- 2. function table.funcName() で定義していく
-- 3. 最後に table を return

-- 関数テーブルを返す関数を書くイメージ


local convert = {}

function convert.ftToCm(feet)
  return feet + 30.48
end

return convert
