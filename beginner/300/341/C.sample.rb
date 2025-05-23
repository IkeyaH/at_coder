# 拾ってきたもの。rubyだとこの操作をしている人が多かった。
H, W, N = gets.split.map(&:to_i)
T = gets.chomp.chars
S = H.times.map { gets.chomp.tr(".#", "10") }.join.to_i(2)

b_move = { "L" => -1, "R" => 1, "U" => -W, "D" => W }

s = S
ans_s = S
d = 0

T.each do |t|
  d += b_move[t]
  n_s = s << d
  ans_s = (ans_s & n_s)
end

puts ans_s.to_s(2).count("1")
