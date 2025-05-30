N = gets.to_i
A = gets.split.map(&:to_i).sort
B = 10**8
B.freeze

r = N - 1
ans = A.sum * (N - 1)

N.times do |i|
  ta = A[i]
  r -= 1 while i < r && ta + A[r] >= B
  m = [r, i].max
  ans -= B * (N - 1 - m)
end

puts ans
