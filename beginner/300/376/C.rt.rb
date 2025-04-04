N = gets.to_i
a = gets.split.map(&:to_i).sort { |a, b| b <=> a }
b = gets.split.map(&:to_i).sort { |a, b| b <=> a }

count = 0
ok = true
ans = -1
N.times do |i|
  if i == N-1 && b.length == N-1
    ans = a[N-1]
    break
  end
  next if b[i] >= a[i]

  if count == 0
    b.insert(i, a[i])
    ans  = a[i]
    count += 1
  else
    ok = false
    break
  end
end

if ok
  puts ans
else
  puts -1
end

