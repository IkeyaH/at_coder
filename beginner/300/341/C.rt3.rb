H, W, N = gets.split.map(&:to_i)
T = gets.chomp
dire = {
  'L' => -1,
  'R' => 1,
  'U' => -W,
  'D' => W
}


grids = []
H.times { grids << gets.chomp }
gins = ''

grids.each do |g|
  gins += g.tr('#.', '01')
end

start = gins.to_i(2)
ans = start

d = 0
T.each_char do |t|
  d += dire[t]
  now = start << d
  ans = ans & now
end

puts ans.to_s(2).count('1')
