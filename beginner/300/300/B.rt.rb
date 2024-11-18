H, W = gets.chomp.split(' ').map(&:to_i)
map_a = []
map_b = []

H.times do
  map_a << gets.chomp.split('')
end

H.times do
  map_b << gets.chomp.split('')
end

ok = false

for i in 0...H do
  copy_a = map_a.dup
  copy_a.rotate!(i)

  for j in 0...W
    # 普通に新しくmapで作るのがとても自然。
    shifted_map = copy_a.map { |c| c.rotate(j) }
    ok = true if shifted_map == map_b
  end
end

puts ok ? 'Yes' : 'No'
