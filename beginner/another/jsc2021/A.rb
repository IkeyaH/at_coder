X, Y, Z = gets.split.map(&:to_f)

ans = (Y*Z / X).to_i
if Y*Z % X == 0
  puts ans -= 1
else
  puts ans
end
