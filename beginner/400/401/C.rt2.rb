N, K = gets.split.map(&:to_i)

result = Array.new(10**6, 1)
(N+1).times do |i|
  next if i < K
  if i == K
    result[i] = K
    next
  end

  result[i] = (result[i-1] * 2 - result[i-K-1]) % 10**9
end

puts result[N]
