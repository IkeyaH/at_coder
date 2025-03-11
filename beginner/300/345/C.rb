sa = gets.chomp.split('')
sh = {}

sa.each do |s|
  if sh.key?(s)
    sh[s] += 1
  else
    sh[s] = 1
  end
end

same = 0
sh.each do |h|
  if h[1] > 1
    same += (h[1] * (h[1] - 1)) / 2
  end
end

len = sa.length
ans = (len * (len - 1)) / 2 - same
ans += 1 if same != 0

puts ans
