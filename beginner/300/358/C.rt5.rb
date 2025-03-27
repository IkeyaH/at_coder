N, M = gets.split.map(&:to_i)
tasts = Array.new(N, 0)

def popcount(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

N.times do |i|
  ta = gets.chomp.chars.reverse
  ta.each_with_index do |t, j|
    tasts[i] |= (1<<j) if t == 'o'
  end
end

ans = N
(1<<N).times do |bit|
  can_t = 0
  N.times do |i|
    can_t |= tasts[i] if (bit>>i&1 == 1)
  end
  ans = [ans, popcount(bit)].min if popcount(can_t) == M
end

puts ans
