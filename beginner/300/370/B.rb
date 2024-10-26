N = gets.chomp.to_i

arr = []

N.times do
  arr << gets.chomp.split(' ').map(&:to_i)
end

now = 0

for i in (1..N) do
  if i == 1
    now = arr[0][0]
  else
    if i >= now
      now = arr[i-1][now-1]
    else
      now = arr[now-1][i-1]
    end
  end
end

puts now
