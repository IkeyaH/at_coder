# todo
N, M = gets.split.map(&:to_i)
W = 1<<10
Edge = Struct.new(:to, :w)
g = Array.new(n) { Array.new }
M.times do
  a, b, w = gets.split.map(&:to_i)
  g[a-1] << Edge.new(b-1, w)
end

@visited = Array.new(N*W, false)

@q = Queue.new

def pu(v, x)
  vid = v*W+x
  return if @visited[vid]
  @visited[vid] = true
  @q.push(vid)
end

pu(0,0)

while q.size > 0
  vid = q.pop
  v = vid / W
  x = vid % W
  g[v].each do |e|
    pu(e.to, x^(e.w))
  end
end

W.times do |x|
  if visited[(n-1)*W+x]
    puts x
    exit
  end
  puts '-1'
end
