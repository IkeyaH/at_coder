N, M, K = gets.split.map(&:to_i)
r = []
kb = Array.new(M, 0)
M.times do |i|
  arr = gets.chomp.split(' ')
  r << arr[-1]
  ta = arr[1..arr[0].to_i]
  ta.each do |a|
    kb[i] = kb[i] | (1 << (a.to_i - 1))
  end
end


# popcount（2新数にした際、1がいつくあるかカウントする）
def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

ans = 0
(1 << N).times do |bit|
  ok = true
  M.times do |i|
    ok = false if (popcount_kernighan(bit & kb[i]) >= K) != (r[i] == 'o')
  end

  ans += 1 if ok
end

puts ans
