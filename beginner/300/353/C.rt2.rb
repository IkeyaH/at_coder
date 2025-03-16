N = gets.to_i
A = gets.split.map(&:to_i).sort
M = 10**8

sum = A.sum
ans = sum*(N-1)

r = N-1
for i in 0...(N-1) do
  r -= 1 while (r >= 0) && (A[i] + A[r]) >= M
  ma = [r, i].max
  ans -= M*(N-1-ma)
end

puts ans
