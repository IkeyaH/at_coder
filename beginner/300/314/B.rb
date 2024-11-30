N = gets.chomp.to_i

counts = []
nums = []

N.times do
  counts << gets.chomp.to_i
  nums << gets.chomp.split(' ').map(&:to_i)
end

X = gets.to_i

results = Array.new(37) { [] }

nums.each_with_index do |n, i|
  if n.include?(X)
    results[counts[i] - 1] << i + 1
  end
end

results.each_with_index do |r, i|
  if r.length != 0
    puts r.length
    puts r.join(' ')
    break
  end
  if i == 36
    puts 0
  end
end
