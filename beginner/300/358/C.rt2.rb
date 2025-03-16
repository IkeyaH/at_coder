def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end


N, M = gets.split.map(&:to_i)
S = []
N.times { S << gets.chomp }

ans = N

# 店の組み合わせbit
(0...(1<<N)).each do |bit|
  ok = true
  M.times do |x|
    can = false
    N.times do |y|
      can = true if (bit>>y&1 == 1) && S[y][x] == 'o'
    end
    ok = false if !can
  end
  ans = [ans, popcount_kernighan(bit)].min if ok
end

puts ans
