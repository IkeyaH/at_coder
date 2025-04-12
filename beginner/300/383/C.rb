# BFS練習問題
require 'thread'

H, W, D = gets.split.map(&:to_i)
s = []
H.times { s << gets.chomp }

dist = Array.new(H) { Array.new(W, Float::INFINITY) }
q = Queue.new # pairで入れる
di = [-1,0,1,0]
dj = [0,-1,0,1]

H.times do |i|
  W.times do |j|
    if s[i][j] == 'H'
      dist[i][j] = 0
      q.push([i,j])
    end
  end
end

while q.size > 0
  i, j = q.pop
  d = dist[i][j]
  4.times do |v|
    ni, nj = i+di[v], j+dj[v]
    next if ni < 0 || ni >= H || nj < 0 || nj >= W
    next if s[ni][nj] == '#'
    next if dist[ni][nj] != Float::INFINITY
    dist[ni][nj] = d+1
    q.push([ni, nj])
  end
end

ans = 0

H.times do |i|
  W.times do |j|
    ans += 1 if dist[i][j] <= D
  end
end

puts ans
