N, M = gets.split.map(&:to_i)
EDGES = Array.new(N) { Array.new(N, 0) }

M.times do
  a,b,c = gets.split.map(&:to_i)
  a_ = a - 1
  b_ = b - 1
  EDGES[a_][b_] = c
  EDGES[b_][a_] = c
end
# pp EDGES

ans = 0
[*0...N].permutation.each do |per|
  # index番号の保存 = 0から始まるので、N / 2 + 1とプラス1をしてOK
  next if per[0] >= N / 2 + 1

  sum = 0
  for i in 0...(N - 1) do
    if EDGES[per[i]][per[i + 1]] == 0
      ans = [ans, sum].max
      sum = 0
    else
      sum += EDGES[per[i]][per[i + 1]]
    end
  end
  ans = [ans, sum].max
end

puts ans
