N, M = gets.chomp.split(' ').map(&:to_i)
arr = Array.new(N) { [] }

M.times do
  st, we = gets.chomp.split(' ').map(&:to_i)
  arr[we - 1] << (st - 1)
end

result = []

arr.each_with_index do |a, i|
  result << (i + 1) if a.length == 0
end

if result.length == 1
  puts result[0]
else
  puts -1
end
