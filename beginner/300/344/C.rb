N = gets.to_i
s_arr = gets.chomp.split('')
Q = gets.to_i
s_h = {}

s_arr.each_with_index do |s, i|
  if s_h.key?(s)
    s_h[s] << i
  else
    s_h[s] = [i]
  end
end

Q.times do
  c, d = gets.chomp.split
  next if c == d
  if s_h.key?(d)
    if s_h.key?(c)
      s_h[d].concat(s_h[c])
      s_h.delete(c)
    end
  else
    if s_h.key?(c)
      s_h[d] = s_h[c]
      s_h.delete(c)
    end
  end
end

ans_arr = Array.new(N)

s_h.each do |h|
  s = h[0]
  s_i = h[1]
  s_i.each do |i|
    ans_arr[i] = s
  end
end

puts ans_arr.join('')
