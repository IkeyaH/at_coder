N = gets.to_i
w_a = []
x_a = []

N.times do
  w, x = gets.chomp.split(' ').map(&:to_i)
  w_a << w
  x_a << x
end

def get_hour(num)
  if num >= 24
    return num - 24
  else
    return num
  end
end

arr = Array.new(24, 0)

for i in 0...N do
  time_diff = x_a[i]
  people = w_a[i]

  for j in 0...9
    time = get_hour(time_diff + j)
    arr[time] = arr[time] + people
  end
end

puts arr.max
