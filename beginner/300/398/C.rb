N = gets.to_i
A = gets.split.map(&:to_i)

ha = {}

A.each_with_index do |a, i|
  if ha.key?(a)
    ha[a] = false
  else
    ha[a] = i + 1
  end
end

max = 0
ans = -1
ha.each do |h|
  if h[1] != false && h[0] > max
    max = h[0]
    ans = h[1]
  end
end

puts ans


