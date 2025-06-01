# 理解。
# 開始位置に+1、終了位置+1に-1
# 開始位置からの累積和を取ると、
# 守られている場合はが加算され、
# 守りが終わると-1されるので化さんが終了する。
# はー、なるほど。

N, M = gets.split.map(&:to_i)
cum = Array.new(N+1, 0)
n = Array.new(N, 0)

M.times do
  l, r = gets.split.map(&:to_i)
  cum[l-1] += 1
  cum[r] -= 1
end

c = 0
N.times do |i|
  c += cum[i]
  n[i] = c
end

sorted_n = n.sort

puts sorted_n[0]
