A, B, C, X, Y = gets.split.map(&:to_i)

max = [X, Y].max
base = A*X + B*Y
ans = base

(max*2).times do |i|
  ta = base
  ta += C*(i+1)
  n = (i+1) / 2

  a_min = [n, X].min
  b_min = [n, Y].min

  ta -= (a_min*A + b_min*B)
  ans = [ans, ta].min
end

puts ans
