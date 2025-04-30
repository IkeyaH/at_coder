N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort

W = N-K-1

ans = Float::INFINITY
(W).upto(N-1) do |i|
  min = A[i-W]
  max = A[i]
  ans = max - min if max - min < ans
end

puts ans
