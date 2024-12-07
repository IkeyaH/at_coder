H, W, D = gets.chomp.split(' ').map(&:to_i)
grid = []
H.times do
  grid << gets.chomp.split('')
end

area = Array.new(H) { Array.new(W, nil) }

# それぞれの点すべてに評価を行う

for i in 0...H do
  for j in 0...W do
    if grid[i][j] == '#'
      next
    end

    # 配列全てを確認する
    arr = []
    for k in 0...H do
      for l in 0...W do
        d = (i - k).abs + (j - l).abs
        if d <= D && grid[k][l] == '.'
          arr << [k, l]
        end
      end
    end
    area[i][j] = arr
  end
end

count = 0
for i in 0...H do
  for j in 0...W do
    target = area[i][j]
    next if target == nil
    for k in 0...H do
      for l in 0...W do
        if (i == k && j == l) || area[k][l] == nil
          next
        else
          comp = area[k][l]
          a_t = target | comp
          count = a_t.length if count < a_t.length
        end
      end
    end
  end
end


puts count
