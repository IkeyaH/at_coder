# https://atcoder.jp/contests/abc320/tasks/abc320_c

M = gets.to_i
s = []
3.times do
  s_i = gets.chomp
  s << s_i
end

ans = Float::INFINITY

for i in 0...M do
  for j in 0...M*2 do
    for k in 0...M*3 do
      next if i == j
      next if i == k
      next if j == k
      next if s[0][i % M] != s[1][j % M]
      next if s[0][i % M] != s[2][k % M]

        m = [i, j, k].max
        ans = [m, ans].min
    end
  end
end

puts ans == Float::INFINITY ? '-1' : ans
