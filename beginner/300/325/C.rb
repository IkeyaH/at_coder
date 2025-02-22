# TLE
H, W = gets.split.map(&:to_i)

grids = Array.new(H) { gets.chomp.split('') }

sensors = {}

grids.each_with_index do |grid, i|
  grid.each_with_index do |gr, j|
    sensors[[i, j]] = true if gr == '#'
  end
end

# 再起処理をするか？
# もし見つかったら都度呼び出し、該当のセンサーを削除していく

DIRES = [
  [-1,-1],[-1,0],[-1,1], # 上
  [0,-1],[0,1], # 同じ列
  [1,-1],[1,0],[1,1] # 下
]

# 順に見ていき、#があれば（keyがあれば）それを元に再度処理する
# 共有のhashに入れていき、最後にそれを大元から削除、でいこう
def find_work_with_sensor(h, w, hash, dires, max_h, max_w)
  hash.delete([h, w])
  dires.each do |dir|
    next_h = h + dir[0]
    next_w = w + dir[1]
    next if next_h < 0 || next_h > max_h
    next if next_w < 0 || next_w > max_w

    if hash.key?([next_h, next_w])
      find_work_with_sensor(next_h, next_w, hash, dires, max_h, max_w)
    end
  end
end

count = 0
sensors.each do |se|
  h, w = se[0]
  find_work_with_sensor(h, w, sensors, DIRES, H - 1, W - 1)
  count += 1
end

puts count
