N = gets.to_i
arr = gets.split.map(&:to_i).sort
B = 10**8

ans = arr.sum * (N-1)
r = N - 1

N.times do |i|
  t = arr[i]
  r -= 1 while i < r && arr[r] + t >= B
  m = [i, r].max
  ans -= B * (N-1-m)
end

puts ans
