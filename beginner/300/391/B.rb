
N, M = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

arr = Array.new(N + 1, false)

nums.each do |n|
  arr[n] = true
end

results = []

(0..N).each do |i|
  next if i == 0
  results << i if arr[i] == false
end

puts results.length
puts results.join(' ')
