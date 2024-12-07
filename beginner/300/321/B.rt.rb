N, X = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)
arr.sort!

little = arr.sum - arr[-1]
big = arr.sum - arr[0]

if big < X
  puts '-1'
elsif little >= X
  puts 0
else
  puts (X - (little - arr[0]))
end
