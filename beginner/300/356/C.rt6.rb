N, M, K = gets.split.map(&:to_i)
kb = Array.new(M, 0)
r = Array.new(M)

def popcount(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end


M.times do |i|
  ta = gets.chomp.split
  r[i] = ta[-1]

  a = ta[1..(ta[0]).to_i]
  a.each do |b|
    kb[i] |= (1<<(b.to_i - 1))
  end
end

ans = 0
(1<<N).times do |bit|
  ok = true
  M.times do |i|
    ok = false if (popcount(bit & kb[i]) >= K) != (r[i] == 'o')
  end
  ans += 1 if ok
end

puts ans
