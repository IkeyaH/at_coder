def popcount(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

N, M, K = gets.split.map(&:to_i)
R = []
A = []

M.times do
  inp = gets.chomp.split
  c = inp[0].to_i
  r = inp[-1]
  ka = inp[1..c].map(&:to_i)

  R << r
  kb = 0
  ka.each do |k|
    kb |= 1<<(k-1)
  end
  A << kb
end

ans = 0

(1<<N).times do |bit|
  ok = true
  M.times do |i|
    ok = false if (popcount(bit&A[i]) >= K) != (R[i] == 'o')
  end
  ans += 1 if ok
end

puts ans
