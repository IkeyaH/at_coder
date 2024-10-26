N = gets.chomp.to_i
nums = gets.chomp.split(' ').map(&:to_i)

sorted_nums_desc = nums.sort.reverse

target = sorted_nums_desc[1]
puts nums.index(target) + 1
