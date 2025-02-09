N, K, A = gets.split.map(&:to_i)
ans = (A + K - 1) % N
if ans == 0
  ans = N
end
puts ans
