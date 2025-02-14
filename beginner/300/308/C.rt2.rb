# 入力を受け取る
n = gets.to_i
people = n.times.map do |i|
  a, b = gets.split.map(&:to_i)
  [i + 1, a, b]  # インデックスは1から始まるので+1
end

# カスタム比較関数を使ってソート
sorted_people = people.sort do |(i1, a1, b1), (i2, a2, b2)|
  # (a1/(a1+b1)) <=> (a2/(a2+b2)) を
  # (a1*(a2+b2)) <=> (a2*(a1+b1)) に変換して比較
  comparison = (a1 * (a2 + b2)) <=> (a2 * (a1 + b1))

  # 成功率が同じ場合は番号の小さい順
  comparison == 0 ? i1 <=> i2 : -comparison  # 降順にするために-をつける
end

# 結果を出力
puts sorted_people.map { |i, _, _| i }.join(' ')
