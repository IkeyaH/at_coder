# TLE!
h, w, n = gets.split.map(&:to_i)
tar = gets.chomp.split('')
grids = []
h.times do
  grids << gets.chomp.split('')
end

d = {
  'R' => [0, 1],
  'L' => [0, -1],
  'U' => [-1, 0],
  'D' => [1,0]
}

ans = 0

for i in 0...h do
  for j in 0...w do
    next if grids[i][j] == '#'
    now_h = i
    now_w = j

    ok = true
    tar.each do |t|
      next_h = now_h + d[t][0]
      next_w = now_w + d[t][1]


      if next_h < 0 || next_h >= h || next_w < 0 || next_w >= w || grids[next_h][next_w] == '#'
        ok = false
        break
      end

      now_h, now_w = next_h, next_w
    end

    ans += 1 if ok
  end
end

puts ans
