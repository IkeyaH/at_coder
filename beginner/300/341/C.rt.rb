# TLE
H, W, N = gets.split.map(&:to_i)
T = gets.chomp
grids = []
H.times { grids << gets.chomp }


dire = {
  'L' => [0, -1],
  'R' => [0, 1],
  'U' => [-1, 0],
  'D' => [1, 0],
}

ans = 0

H.times do |i|
  W.times do |j|
    next if grids[i][j] == '#'
    now_i = i
    now_j = j
    count = 0
    T.each_char do |t|
      d = dire[t]
      now_i = now_i += d[0]
      now_j = now_j += d[1]
      break if now_i < 0 || now_i >= H || now_j < 0 || now_j >= W
      break if grids[now_i][now_j] == '#'
      count += 1
    end
    ans += 1 if count == N
  end
end

puts ans
