N, K = gets.split.map(&:to_i)

cnt = Array.new(N, 2)

a_arr = gets.split.map(&:to_i)

a_arr.each do |a|
  a -= 1
  cnt[a] = cnt[a] -= 1
end

x = []

for i in 0...N do
  cnt[i].times do |j|
    x << i
  end
end

n = x.size
ans = 0
if n.even?
  for i in 0...(n/2) do
    ans += x[i*2+1] - x[i*2]
  end
else
  now = 0
  for i in 0...(n/2) do
    now += x[i*2+2] - x[i*2+1]
  end
  ans = now
  ni = 2
  while ni < n do
    now += x[ni-1] - x[ni-2]
    now -= x[ni] - x[ni-1]
    ans = [ans, now].min
    ni += 2
  end
end

puts ans
