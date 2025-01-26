# N = gets.to_i
# nums = gets.chomp.split(' ').map(&:to_i)

# hi = nums[1].to_f / nums[0]
# ok = true

# if N != 2
#   for i in 1...(N - 1) do
#     hi_now = nums[i + 1].to_f / nums[i]
#     if hi_now != hi
#       ok = false
#     end
#   end
# end

# if N == 2
#   puts 'Yes'
# elsif ok == true
#   puts 'Yes'
# else
#   puts 'No'
# end

# N = gets.to_i
# nums = gets.chomp.split(' ').map(&:to_f)

# hi = []

# for i in 0...(N - 1) do
#   hi << nums[i + 1] / nums[i]
# end

# if hi.uniq.length == 1
#   puts 'Yes'
# else
#   puts 'No'
# end

# 整数のみで判定できるようにする

N = gets.to_i
nums = gets.chomp.split(' ').map(&:to_i)
ok = true

for i in 0...(N - 2) do
  break if N == 2
  if nums[i] * nums[i + 2] != nums[i + 1] ** 2
    ok = false
  end
end

puts ok == true ? 'Yes' : 'No'
