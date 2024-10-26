# n = gets.chomp

# numbers = gets.chomp.split(' ').map(&:to_i)

# count = 0

# while true
#   numbers = numbers.sort!.reverse!
#   break if numbers.count(0) == (numbers.length - 1) || numbers.count(0) == numbers.length

#   numbers[0] = numbers[0] - 1
#   numbers[1] = numbers[1] - 1

#   count += 1
# end

# puts count

# 若干修正

n = gets.chomp

numbers = gets.chomp.split(' ').map(&:to_i)

count = 0

while true
  numbers = numbers.sort!.reverse!
  break if numbers[1] == 0

  numbers[0] = numbers[0] - 1
  numbers[1] = numbers[1] - 1

  count += 1
end

puts count
