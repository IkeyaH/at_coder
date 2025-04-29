H, W, D = gets.split.map(&:to_i)
grids = []
H.times { grids << gets.chomp }
q = Queue.new
ngrids = Array.new(H) { Array.new(W, Float::INFINITY) }

H.times do |i|
  W.times do |j|
    if grids[i][j] == 'H'
      ngrids[i][j] = 0
      q.push([i,j])
    end
  end
end

di = [1,0,-1,0]
dj = [0,1,0,-1]

while q.size > 0
  bi, bj = q.pop
  4.times do |n|
    ti, tj = bi+di[n], bj+dj[n]
    next if ti < 0 || ti >= H || tj < 0 || tj >= W
    next if grids[ti][tj] == '#'
    next if ngrids[ti][tj] != Float::INFINITY
    ngrids[ti][tj] = ngrids[bi][bj] + 1
    q.push([ti,tj])
  end
end

ans = 0
H.times do |i|
  W.times do |j|
    ans += 1 if ngrids[i][j] <= D
  end
end

puts ans
