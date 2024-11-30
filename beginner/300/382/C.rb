# 2 * 10 ^ 5 二つはやっぱ無理。以下はTLE

N, M = gets.chomp.split(' ').map(&:to_i)

a_arr = gets.chomp.split(' ').map(&:to_i)
b_arr = gets.chomp.split(' ').map(&:to_i)
min = a_arr.min

# result = []

for i in 0...M do
  target = b_arr[i]
  if target < min
    result << -1
    next
  end

end

# puts result
