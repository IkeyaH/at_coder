# 順にアクセスしていき、ループが見つかったところで終了とする。
# 数ごとindexを保存する、かつループの配列を別途作成し、最初のindexからそこまでを切り出す？

# RE! 確かに、こういう無理のある実装はエラーとなりがちな気がする。反省
N = gets.to_i
glaph = gets.split.map(&:to_i)

root = []
index = Array.new(N) {Array.new}

now = 0
bef = nil
st = nil
ed = nil

N.times do |i|
  # ルートにその地点を入れる
  root.push(now + 1)
  # indexに、その地点を訪れたタイミングを記録
  # ここが良くない。順々に見ていくは見ていくが、indexの記録は少し違和感
  # ループ自体は本来何回でも良く、終了する保証はあるのでそこに頼ったpushはなんだか違うな？
  
  index[now].push(i)
  # その地点にすでに訪れていたら、ループと判定する
  if index[now].length == 2
    st = index[now][0]
    ed = index[now][1]
    break
  end

  n_ind = glaph[now] - 1
  if bef == n_ind
    st = now
    ed = n_ind
  end
  bef = now
  now = n_ind
end

# 二点の場合は、戻らないで終了してしまう？
# 前回の点にすぐ戻ってきたばいの処理を入れる、でいこう
start = [st, ed].min
en = [st, ed].max

ans = nil
# 二つでループする場合とそうでない場合にしたい
if (st - ed).abs == 1
  ans = root.slice(start..en)
else
  ans = root.slice(start...en)
end
puts ans.length
puts ans.join(' ')

# 何がいけなかったのか？
# 今の地点を記録、としてしまったため、2箇所ループの場合に次の地点が記録されず、
# 期待した結果とならなかった。
# → 今ではなく「次の地点を記録」とすれば、期待したものになったはず。
