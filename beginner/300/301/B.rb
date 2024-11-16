# https://atcoder.jp/contests/abc301/tasks/abc301_b

# N = gets.to_i
# numbers = gets.chomp.split(' ').map(&:to_i)

# ok = false
# count = 0

# while !ok
#   numbers.each_with_index do |n, i|
#     ok = true if i == numbers.length - 1
#     break if i == numbers.length - 1
#     diff = (n - numbers[i + 1]).abs
#     if diff != 1
#       big = [n, numbers[i + 1]].max
#       small = [n, numbers[i + 1]].min
#       arr = ((small + 1)...big).map { |a| a }
#       if big == n
#         arr.each do |a|
#           numbers.insert(i + 1, a)
#         end
#       else
#         for i in 1..(arr.length) do
#           numbers.insert(i, arr[i - 1])
#         end
#       end
#     end
#   end
# end

# puts numbers.join(' ')

N = gets.to_i
numbers = gets.chomp.split(' ').map(&:to_i)

while true
  count = 0
  numbers.each_with_index do |n, i|
    if i != numbers.length - 1 && (n - numbers[i + 1]).abs == 1
      count += 1
    end
  end
  break if count == numbers.length - 1

  for i in 0...(numbers.length - 1) do
    if (numbers[i] - numbers[i + 1]).abs != 1
      big = [numbers[i], numbers[i + 1]].max
      small = [numbers[i], numbers[i + 1]].min
      arr = ((small + 1)..(big - 1)).map { |a| a }

      if numbers[i] == big
        arr.each do |a|
          numbers.insert(i + 1, a)
        end
      else
        arr.reverse!.each do |a|
          numbers.insert(i + 1, a)
        end
      end
      break
    end
  end
end

puts numbers.join(' ')
