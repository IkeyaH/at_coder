N, M = gets.split.map(&:to_i)

edges = Array.new(N) { Array.new(N, 0) }

M.times do
  _a, _b, c = gets.split.map(&:to_i)
  a = _a - 1
  b = _b - 1
  edges[a][b] = c
  edges[b][a] = c
end

# 順列で見ていき、ルートが続いていればプラス、途切れていればそれまでの合計と今までのmaxで大きい方を選ぶ。
ans = 0
[*0...N].permutation.each do |per|
  next if per[0] > N / 2

  tmp_sum = 0
  (per.length - 1).times do |i|
    now = per[i]
    ne = per[i + 1]
    dist = edges[now][ne]
    if dist != 0
      tmp_sum += dist
      ans = [ans, tmp_sum].max
    else
      tmp_sum = 0
    end
  end
end

puts ans
