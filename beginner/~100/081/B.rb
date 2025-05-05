num_of_num = gets.chomp.to_i
numbers = gets.chomp.split(' ').map(&:to_i)

flag = true
result = 0
next_arr = []

while flag
  numbers.each do |num|
    if num % 2 == 0
      next_arr << num / 2
    else
      flag = false
    end
  end

  result += 1 if flag == true
  numbers = next_arr
  next_arr = []
end

puts result
