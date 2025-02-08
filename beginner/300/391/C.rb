N = gets.to_i

# 見つめている人
P = gets.split.map(&:to_i)
# つけているゼッケン（自分であれば回答すべきindex番号、見つめている場合回答する数字）
Q = gets.split.map(&:to_i)

ans = Array.new(N+1, -1)

for i in 0...N do
  # つけているゼッケン
  zek = Q[i]
  # みつめている人のindex番号
  look = P[i]
  # 最後に回答を入れる
  ans[zek] = Q[look - 1]
end

puts ans.drop(1).join(' ')
