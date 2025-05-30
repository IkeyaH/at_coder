def pc(num)
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
K = []

S.each do |s|
  k = 0
  s.split('').each_with_index do |c, i|
    k |= (1<<i) if c == 'o'
  end
  K << k
end

ans = Float::INFINITY

(1<<N).times do |bit|
  kind = 0
  N.times do |i|
    kind |= K[i] if (bit>>i&1 == 1)
  end
  ans = [pc(bit), ans].min if pc(kind) == M
end

puts ans
