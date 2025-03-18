N, M, K = gets.split.map(&:to_i)
keys = Array.new(M, 0)
r = []

def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

M.times do |i|
  tarr = gets.chomp.split
  r << tarr[-1]
  ta = tarr[1..tarr[0].to_i]
  ta.each do |a|
    keys[i] |= (1 << (a.to_i - 1))
  end
end

ans = 0
(1 << N).times do |bit|
  ok = true
  M.times do |i|
    ok = false if (popcount_kernighan(bit & keys[i]) >= K) != (r[i] == 'o')
  end
  ans += 1 if ok
end

puts ans
