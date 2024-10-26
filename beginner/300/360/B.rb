# s,t = gets.chomp.split(' ')
# s_arr = s.split('')

# kugiri = s_arr.length - 1
# kugiri_times = kugiri

# result_arr = []

# kugiri_times.times do
#   tmp = []
#   stop_flag = false
#   kugiri_ichi = kugiri - 1

#   while !stop_flag
#     if kugiri_ichi.between?(0, s_arr.length - 1)
#       tmp << s_arr[kugiri_ichi]
#       kugiri_ichi += kugiri
#     else
#       stop_flag = true
#     end
#   end
#   result_arr << tmp.join
#   kugiri = kugiri - 1
#   break if tmp.length > t.length
# end

# if result_arr.include?(t)
#   puts 'Yes'
# else
#   puts 'No'
# end

s,t = gets.chomp.split(' ')
s_arr = s.split('')

result_arr = []
kugiri_num = 1

for i in 1...(s_arr.length - 1) do
  kugiri_index = i - 1
  tmp = s.length / kugiri_num
  result = []
  break if tmp == 1 && s.length % kugiri_num == 0
  tmp.times do
    result << s_arr[kugiri_index]
    kugiri_index += i
  end
  result_arr << result.join
end

if result_arr.include?(t)
  puts 'Yes'
else
  puts 'No'
end
