n, c = gets.chomp.split(' ').map(&:to_i)
t_arr = gets.chomp.split(' ').map(&:to_i)

latest_time = 0
count = 0

for i in 0...n do
  if i == 0
    count += 1
    latest_time = t_arr[0]
  end

  if i > 0
    if t_arr[i] - latest_time >= c
      count += 1
      latest_time = t_arr[i]
    end
  end
end

puts count
