mochi_count = gets.chomp.to_i

mochi_hash = {}

mochi_count.times do
  diameter = gets.chomp.to_i
  mochi_hash[diameter] = true
end

puts mochi_hash.length
puts mochi_hash
