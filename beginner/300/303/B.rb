N, M = gets.chomp.split(' ').map(&:to_i)
numbers = []
M.times do
  numbers << gets.chomp.split(' ').map(&:to_i)
end

results = Array.new(N) { [] }

numbers.each do |num|
  num.each_with_index do |n, i|
    if i == 0
      results[n - 1] << num[i + 1]
    elsif i == N - 1
      results[n - 1] << num[i - 1]
    else
      results[n - 1] << num[i - 1]
      results[n - 1] << num[i + 1]
    end
  end
end

unique_results = results.map { |r| r.uniq }

arr = []

N.times do |i|
  tmp = N - i
  a = []
  (tmp - 1).times do |j|
    a << N - j
  end
  arr << a
end

count = 0

arr.each_with_index do |a,i|
  a.each do |t|
    count += 1 if !unique_results[i].include?(t)
  end
end

puts count
