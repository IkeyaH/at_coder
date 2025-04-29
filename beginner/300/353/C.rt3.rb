N = gets.to_i
A = gets.split.map(&:to_i).sort
B = 10**8

sum = A.sum
ans = sum*(N-1)

r = n-1

(N-1).times do |i|
  r -= 1 while (r >= 0) && (A[i] + A[r]) >= M
  ma = [r, i].max
  ans -= M*(N-1-ma)
end

puts ans

