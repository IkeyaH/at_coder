H, W, D = gets.split.map(&:to_i)
S = []
H.times { S << gets.chomp }

dist = Array.new(H) { Array.new(W, Float::INFINITY) }
q = Queue.new

ni = [0, 1, 0, -1]
nj = [1, 0, -1, 0]

# 初期化
H.times do |i|
  W.times do |j|
    if S[i][j] == 'H'
      dist[i][j] = 0
      q.push([i, j])
    end
  end
end

while (q.size > 0) do
  i, j = q.pop
  4.times do |v|
    ti, tj = i+ni[v], j+nj[v]
    next if ti < 0 || ti >= H || tj < 0 || tj >= W
    next if S[ti][tj] == '#'
    next if dist[ti][tj] != Float::INFINITY
    dist[ti][tj] = dist[i][j] + 1
    q.push([ti, tj])
  end
end

ans = 0
H.times do |i|
  W.times do |j|
    ans += 1 if dist[i][j] <= D
  end
end

puts ans
