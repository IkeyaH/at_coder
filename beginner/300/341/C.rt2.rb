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
init_map = grids.map { |g| g.tr('.#', '10') }.join.to_i(2)

ans = init_map
im = init_map
d = 0

T.each_char do |c|
  d += dire[c]
  n_im = im << d
  ans &= n_im
end

puts ans.to_s(2).count('1')
