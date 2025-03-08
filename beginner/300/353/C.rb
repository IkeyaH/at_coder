# N = gets.to_i
# a_arr = gets.split.map(&:to_i)

# DIV = 10**8
# ans = 0

# for i in 0...(N-1) do
#   for j in (i+1)...N do
#     ans += (a_arr[i] + a_arr[j]) % DIV
#   end
# end

# puts ans

# これはTLE
# どうすれば計算量を短くできる?

N = gets.to_i
M = 10**8
a_arr = gets.split.map(&:to_i).sort

ans = 0

for i in 0...N
  ans += a_arr[i] * (N-1)
end

# sortしているので、現在のiだとこのrで超えるな、となる場合、
# 次のiでももちろんrを超える。
# よって、次に進んだときに最初から（N-1から）アクセスする必要はなく、
# 順次減らしていけば良い。賢い。
r = N - 1
for i in 0...N do
  r -= 1 while (r >= 0) && (a_arr[i] + a_arr[r] >= M)
  ans -= ((N - 1) - [r, i].max) * M
end

puts ans
