N = gets.to_i
A = gets.split.map(&:to_i)

h1 = A.tally
h2 = {}

c1 = h1.length
c2 = 0

ans = c1

(0...(N - 1)).each do |i|
  ta = A[i]
  # h1
  if h1[ta] == 1
    h1[ta] -= 1
    c1 -= 1
  else
    h1[ta] -= 1
  end

  # h2
  if !h2.key?(ta)
    h2[ta] = true
    c2 += 1
  end
  ans = [ans, (c1 + c2)].max
end

puts ans
