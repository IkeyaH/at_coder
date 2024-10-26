max, gte, lte = gets.chomp.split(' ').map(&:to_i)

result = 0

for i in 1..max do
  numbers = i.to_s.split('').map(&:to_i)
  total = 0
  numbers.each do |i|
    total += i
  end
  if total >= gte && total <= lte
    result += i
  end
end

puts result
