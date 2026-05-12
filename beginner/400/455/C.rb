N, K = gets.chomp.split(' ').map(&:to_i)
a_arr = gets.chomp.split(' ').map(&:to_i)



num_hash = {}
sum = 0

a_arr.each do |a|
  if num_hash.key?(a)
    num_hash[a] = num_hash[a] + a
  else
    num_hash[a] = a
  end
  sum += a
end

sorted_values = num_hash.sort_by { |_, a| -a }
num_kinds = sorted_values.count

if num_kinds <= K
  puts 0
else
  K.times do |i|
    sum -= sorted_values[i][1]
  end
  puts sum
end
