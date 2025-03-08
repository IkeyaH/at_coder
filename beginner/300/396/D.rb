N, M = gets.split.map(&:to_i)
glaph = Array.new(N) { Array.new(N,-1) }

M.times do
  u_, v_, w = gets.split.map(&:to_i)
  u = u_ - 1
  v = v_ - 1

  glaph[u][v] = w
  glaph[v][u] = w
end

ans = Float::INFINITY
[*1...N].permutation.each do |arr|
  now = 0
  t_ans = 0
  ok = false
  arr.each do |a|
    if glaph[now][a] != -1
      t_ans = t_ans ^ glaph[now][a]
      now = a
      if a == N - 1
        ok = true
        break
      end
    else
      next
    end
  end

  if ok == true
    ans = [ans, t_ans].min if t_ans != 0
  end
end

puts ans

