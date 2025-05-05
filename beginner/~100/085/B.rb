mochi_count = gets.chomp.to_i

mochi_arr = []

mochi_count.times do
  diameter = gets.chomp.to_i
  mochi_arr << diameter
end

mochi_arr.uniq!

puts mochi_arr.length
