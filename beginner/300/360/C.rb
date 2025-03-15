N = gets.to_i
A = gets.split.map(&:to_i)
W = gets.split.map(&:to_i)

box_h = {}
N.times do |i|
  box_n = A[i]
  w = W[i]
  if box_h.key?(box_n)
    box_h[box_n] << w
  else
    box_h[box_n] = [w]
  end
end

ans = 0
box_h.each do |box|
  ta = box[1].sort
  next if ta.size == 1
  ans += ta.sum - ta[-1]
end

puts ans
