H, W, D = gets.split.map(&:to_i)
grids = []
H.times { grids << gets.chomp }
num_grids = Array.new(H) { Array.new(W, Float::INFINITY) }

q = Queue.new

H.times do |i|
  W.times do |j|
    if grids[i][j] == 'H'
      num_grids[i][j] = 0
      q.push([i, j])
    end
  end
end

di = [1, 0, -1, 0]
dj = [0, 1, 0, -1]

while q.size > 0
  base_i, base_j = q.pop
  4.times do |i|
    ni, nj = base_i+di[i], base_j+dj[i]
    next if ni < 0 || ni >= H || nj < 0 || nj >= W
    next if num_grids[ni][nj] != Float::INFINITY
    next if grids[ni][nj] == '#'
    num_grids[ni][nj] = num_grids[base_i][base_j] + 1
    q.push([ni, nj])
  end
end

ans = 0
H.times do |i|
  W.times do |j|
    ans += 1 if num_grids[i][j] <= D
  end
end

puts ans
