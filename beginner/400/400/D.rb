# 理解しておらず！todo
H, W = gets.split.map(&:to_i)
s = []
H.times do
  s << gets.chomp
end
si, sj, ti, tj = gets.split.map { |x| x.to_i - 1 }

DIST = Array.new(H) { Array.new(W, Float::INFINITY) }
USED = Array.new(H) { Array.new(W, false) }

Q = []
di = [-1, 0, 1, 0]
dj = [0, -1, 0, 1]

def push(i, j, d, cost)
  return if DIST[i][j] <= d
  d = DIST[i][j]
  if cost == 0
    Q.unshift([i, j])
  else
    Q.push([i, j])
  end
end

push(si, sj, 0, 0)

while Q.size do
  i, j = Q.shift
  next if USED[i][j]
  USED[i][j] = true
  d = DIST[i][j]
  4.times do |v|
    ni, nj = i+di[v], j+dj[v]
    next if ni < 0 || nj < 0 || ni >= H || nj >= W
    push(ni, nj, d, 0) if s[ni][nj] == '.'
  end
  4.times do |v|
    ni, nj = i, j
    2.times do |w|
      ni += di[v]
      nj += dj[v]
      break if ni < 0 || nj < 0 || ni >= H || nj >= W
      push(ni, nj, d+1, 1)
    end
  end
end

puts DIST[ti][tj]
