N = gets.to_i
A = gets.split.map(&:to_i)

ans = 1
d = Float::INFINITY
l = 1

1.upto(N-1).each do |i|
  nd = A[i-1] - A[i]
  if d == nd
    l += 1
    ans += l
  else
    l = 2
    ans += l
    d = nd
  end
end

puts ans
