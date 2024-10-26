n, q = gets.chomp.split(' ').map(&:to_i)
h_arr = []
t_arr = []

q.times do
  h, t = gets.chomp.split(' ')
  h_arr << h
  t_arr << t.to_i
end

now_r = 2
now_l = 1

count = 0

for i in 0...q do
  now = 0
  to = 0
  ng = 0
  if h_arr[i] == 'R'
    now = [now_r, t_arr[i]].min
    to = [now_r, t_arr[i]].max
    ng = now_l
  else
    now = [now_l, t_arr[i]].min
    to = [now_l, t_arr[i]].max
    ng = now_r
  end

  if now == to

  elsif now < ng && ng < to
    t = n - to + 1
    u = now - 1
    count += t + u
  else
    count += to - now
  end

  if h_arr[i] == 'R'
    now_r = t_arr[i]
  else
    now_l = t_arr[i]
  end
end

puts count
