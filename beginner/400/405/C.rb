N = gets.to_i
arr = gets.split.map(&:to_i)

sum = arr.sum
ans = 0

(N-1).times do |i|
  sum -= arr[i]
  ans += arr[i] * sum
end

puts ans
