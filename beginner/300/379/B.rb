n, k = gets.chomp.split(' ').map(&:to_i)
s = gets.chomp.split('')

count = 0
result = 0

s.each do |t|
  if t == 'O'
    count += 1
  else
    count = 0
  end

  if count == k
    result += 1
    count = 0
  end
end

puts result
