H, W, D = gets.split.map(&:to_i)
grids = []
H.times do |i|
  grids << gets.chomp
end

hgrids = Array.new(H) { Array.new(W, Float::INFINITY) }

q = Queue.new
Pos = Struct.new(:height, :width)

H.times do |i|
  W.times do |j|
    if grids[i][j] == 'H'
      hgrids[i][j] = 0
      q.push(Pos.new(i, j))
    end
  end
end

dh = [0, 1, 0, -1]
dw = [1, 0, -1, 0]

while q.length > 0
  pos = q.pop
  now = hgrids[pos.height][pos.width]
  ne = now + 1
  4.times do |i|
    nh = pos.height + dh[i]
    nw = pos.width + dw[i]

    next if nh < 0 || nh >= H || nw < 0 || nw >= W
    next if grids[nh][nw] != '.'

    if hgrids[nh][nw] > ne
      hgrids[nh][nw] = ne 
      q.push(Pos.new(nh, nw))
    end
  end
end

ans = 0
H.times do |i|
  W.times do |j|
    ans += 1 if hgrids[i][j] <= D
  end 
end

puts ans
