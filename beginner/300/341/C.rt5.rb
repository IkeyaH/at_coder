# 25mくらい
H, W, N = gets.split.map(&:to_i)
dire = {
  "L" => -1,
  "R" => 1,
  "U" => -W,
  "D" => W,
}


T = gets.chomp
grids = []
H.times { grids << gets.chomp }
gs = ''

grids.each do |g|
  t = g.tr('.#', '10')
  gs += t
end

sgi = gs.to_i(2)
now  = sgi.dup
d = 0

N.times do |i|
  d += dire[T[i]]

  now = now & (sgi << d)
end

puts now.to_s(2).count('1')
