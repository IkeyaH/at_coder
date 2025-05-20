H, W = gets.split.map(&:to_i)
grids = []
H.times { grids << gets.chomp }

q = Queue.new
# 初期化
H.times do |i|
  W.times do |j|
    q.push([i, j]) if grids[i][j] == "E"
  end
end

if q.length == 0
  puts grids
  exit
end

dire_h = [1,0,-1,0]
dire_w = [0,1,0,-1]

ans = grids.dup
while q.length > 0
  now_h, now_w = q.pop
  4.times do |i|
    next_h = now_h + dire_h[i]
    next_w = now_w + dire_w[i]
    next if next_h < 0 || next_h >= H || next_w < 0 || next_w >= W
    next if ans[next_h][next_w] != '.'

    case i
    when 0
      ans[next_h][next_w] = '^'
    when 1
      ans[next_h][next_w] = '<'
    when 2
      ans[next_h][next_w] = 'v'
    when 3
      ans[next_h][next_w] = '>'
    end
    q.push([next_h, next_w])
  end
end

puts ans
