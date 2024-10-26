vilige_num = gets.chomp.to_i
zahyo_arr = gets.chomp.split(' ').map(&:to_i)
person_num_arr = gets.chomp.split(' ').map(&:to_i)

query_num = gets.chomp.to_i
result = []

query_num.times do
  gte, lte = gets.chomp.split(' ').map(&:to_i)
  gte_index = zahyo_arr.index { |za| za >= gte }
  lte_index = -10000000000000000000000000
  if zahyo_arr.last < lte
    lte_index = zahyo_arr.length - 1
  else
    lte_index = zahyo_arr.index { |za| za >= lte }
    lte_index -= 1 if zahyo_arr[lte_index] > lte
  end

  result << person_num_arr[gte_index..lte_index].sum
end

puts result
