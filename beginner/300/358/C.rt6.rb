# TODO

def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

N, M = gets.split.map(&:to_i)
shop = []
N.times { shop << gets.chomp }
shop_tasts = Array.new(N, 0)

N.times do |i|
  M.times do |j|
    if shop[i][j] == 'o'
      shop_tasts[i] |= (1<<j)
    end
  end
end

ans = N
(1<<N).times do |bit|
  tasts = 0
  N.times do |m|
    if bit>>m&1 == 1
      tasts |= shop_tasts[m]
    end
  end
  ans = [ans, popcount_kernighan(bit)].min if popcount_kernighan(tasts) == M
end

puts ans
