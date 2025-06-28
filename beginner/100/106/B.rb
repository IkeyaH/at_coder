N = gets.to_i

ans = 0
1.upto(N).each do |n|
  next if n.even?
  y = 0
  1.upto(n).each do |j|
    y += 1 if n % j == 0
  end
  ans += 1 if y == 8
end

puts ans
