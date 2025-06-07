N, L = gets.split.map(&:to_i)
D = gets.split.map(&:to_i)

W = L / 3

if L % 3 != 0
  puts 0
  exit
end

dots = Array.new(L, 0)
dots[0] = 1
bef = 0

D.each do |d|
  bef = (bef + d) % L
  dots[bef] += 1
end

ans = 0
(W).times do |i|
  s = i
  d1 = dots[s]
  d2 = dots[s+W]
  d3 = dots[s+2*W]

  ans += d1*d2*d3
end

puts ans
