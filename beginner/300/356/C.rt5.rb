N, M, K = gets.split.map(&:to_i)
def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end


keys = Array.new(M, 0)
r = []

M.times do |i|
  tmp = gets.chomp.split
  r << tmp[-1]
  tmp[1..(tmp[0].to_i)].each do |t|
    keys[i] |= (1<<(t.to_i - 1))
  end
end

ans = 0
(1<<N).times do |bit|
  ok = true
  M.times do |i|
    k = keys[i]
    ok = false if (popcount_kernighan(k & bit) >= K) != (r[i] == 'o')
  end
  ans += 1 if ok
end

puts ans
