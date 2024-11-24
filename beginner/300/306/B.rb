nums = gets.chomp.split.map(&:to_i)
result = 0

nums.each_with_index do |n, i|
  if n == 1
    result += 2**i
  end
end

puts result
