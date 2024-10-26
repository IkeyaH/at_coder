h, w = gets.chomp.split(' ').map(&:to_i)
now_h, now_w = gets.chomp.split(' ').map(&:to_i)

grid = []
h.times do
  grid << gets.chomp.split('')
end

hope_directions = gets.chomp.split('')

directions = {
  'U' => [-1, 0],
  'D' => [1, 0],
  'R' => [0, 1],
  'L' => [0, -1]
}

hope_directions.each do |dir|
  dh, dw = directions[dir]
  new_h, new_w = now_h + dh, now_w + dw

  if new_h.between?(1, h) && new_w.between?(1, w) && grid[new_h-1][new_w - 1] == '.'
    now_h, now_w = new_h, new_w
  end
end

puts now_h.to_s + ' ' + now_w.to_s
