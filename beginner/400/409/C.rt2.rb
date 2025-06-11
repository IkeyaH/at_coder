N, L = gets.split.map(&:to_i)
D = gets.split.map(&:to_i)

if L % 3 != 0
  puts '0'
  exit
end

W = L / 3

points = Array.new(L, 0)
points[0] = 1 # 開始地点
b = 0

(N-1).times do |i|
  w = D[i]
  p = (b + w) % L
  points[p] += 1 
  b = p
end

ans = 0

W.times do |i|
  p1 = points[i]
  p2 = points[i+W]
  p3 = points[i+W*2]

  ans += p1*p2*p3
end

puts ans
