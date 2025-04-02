N = gets.to_i
K = gets.split.map(&:to_i)
sum = K.sum

min_diff = sum
ans = sum
(1 << N-1).times do |bit|
  ts1 = 0
  (N-1).times do |i|
    ts1 += K[i] if (bit>>i&1 == 1)
  end
  ts2 = sum - ts1
  if min_diff > (ts1 - ts2).abs
    ans = [ts1, ts2].max
    min_diff = (ts1 - ts2).abs
  end
end

puts ans
