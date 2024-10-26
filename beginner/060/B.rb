a, b, c = gets.chomp.split(' ').map(&:to_i)

result = false

b.times do |i|
  remainder = a * i % b
  result = true if remainder == c
  break if result == true
end

puts result ? 'YES' : 'NO'
