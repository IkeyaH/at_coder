N = gets.to_i
str = gets.chomp

ans = 0
(N-2).times do |i|
  c1 = str[i]
  c2 = str[i+1]
  c3 = str[i+2]
  if c1 == 'A' && c2 == 'B' && c3 == 'C'
    ans += 1
  end
end

puts ans
