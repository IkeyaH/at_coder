n, r = gets.chomp.split(' ').map(&:to_i)

d_arr = []
a_arr = []

n.times do
  d, a = gets.chomp.split(' ').map(&:to_i)
  d_arr << d
  a_arr << a
end


for i in 0...n do
  if r >= 1600 && r < 2800 && d_arr[i] == 1
    r = r + a_arr[i]
  end

  if r >= 1200 && r < 2400 && d_arr[i] == 2
    r = r + a_arr[i]
  end
end

puts r
