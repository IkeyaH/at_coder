N, S = gets.split.map(&:to_i)
T = gets.split.map(&:to_i)

if T[0] > S
  puts 'No'
  exit
end

ok = true
1.upto(N-1).each do |i|
  b = T[i-1]
  n = T[i]

  if n - b > S
    ok = false
    break
  end
end

if ok
  puts 'Yes'
else
  puts 'No'
end
