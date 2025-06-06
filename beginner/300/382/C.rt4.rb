N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
bm = B.max

ids = Array.new(bm+1, -1)

N.times do |i|
  ta = A[i]
  if ta <= bm
    ids[ta..bm] = Array.new((bm-ta+1), i+1)
    bm = ta-1
  end
end

B.each do |b|
  puts ids[b]
end

