N, K = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i).sort
w = N - K - 1

ans = Float::INFINITY

N.times do |i|
  break if i + w >= N
  diff = arr[i+w] - arr[i]
  ans = [diff, ans].min
end

puts ans
