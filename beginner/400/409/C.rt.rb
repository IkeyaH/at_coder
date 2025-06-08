N, L = gets.split.map(&:to_i)
D = gets.split.map(&:to_i)

W = L / 3
r = L % 3

if r != 0
  puts 0
  exit
end

dots = Array.new(L, 0)
dots[0] += 1 # 最初の点
bef = 0

D.each do |d|
  bef = (bef + d) % L
  dots[bef] += 1
end

ans = 0
W.times do |i|
  p1 = i
  p2 = i+W
  p3 = i+W*2

  ans += dots[p1] * dots[p2] * dots[p3]
end

puts ans
