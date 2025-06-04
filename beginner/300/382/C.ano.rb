# todo: RE!
N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
b_with_i = []
M.times do |i|
  b = B[i]
  b_with_i << [b, i]
end

b_with_i.sort!
m = Float::INFINITY
r = M - 1
ans = Array.new(M, -1)

N.times do |i|
  break if r < 0

  a = A[i]
  next if a >= m
  m = a

  bi = b_with_i.bsearch_index { |bwi| bwi[0] >= m }
  (bi..r).each do |j|
    ans[b_with_i[j][1]] = i + 1
  end
  r = bi - 1
end

puts ans
