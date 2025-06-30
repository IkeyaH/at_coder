A, B, C, X, Y = gets.split.map(&:to_i)
tm = 2 * 10**5 + 10

ans = Float::INFINITY

(tm).times do |ab|
  price = ab*C
  n = ab / 2

  price += (A*(X-n)) if (X-n) > 0
  price += (B*(Y-n)) if (Y-n) > 0

  ans = [ans, price].min
end

puts ans
