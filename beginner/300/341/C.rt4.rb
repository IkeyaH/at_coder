H, W, N = gets.split.map(&:to_i)
T = gets.chomp

grids = []
H.times { grids << gets.chomp }

m = ''
grids.each do |g|
  g = g.tr(".#", "10")
  m += g
end

dir = { 'L' => -1, 'R' => 1, "U" => -W, "D" => W }

s = m.to_i(2)
ans = s

d = 0
T.each_char do |t|
  d += dir[t]
  now = s << d
  ans = ans & now
end

puts ans.to_s(2).count('1')
