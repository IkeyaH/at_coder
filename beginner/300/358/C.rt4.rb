N, M = gets.split.map(&:to_i)
K = []
N.times do
  K << gets.chomp
end

def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

ans = N
(1<<N).times do |bit|
  ok = true
  M.times do |i|
    can = false
    N.times do |j|
      can = true if (bit>>j&1 == 1) && K[j][i] == 'o'
    end
    ok = false if !can
  end
  ans = [ans, popcount_kernighan(bit)].min if ok
end

puts ans
