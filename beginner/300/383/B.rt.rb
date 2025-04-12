H, W, D = gets.chomp.split(' ').map(&:to_i)
grid = []
H.times do
  grid << gets.chomp.split('')
end

result = 0

for i in 0...H do
  for j in 0...W do
    target_1 = grid[i][j]
    next if target_1 != '.'

    count = 0
    for k in 0...H do
      for l in 0...W do
        target_2 = grid[k][l]
        next if k == i && l == j
        next if target_2 != '.'

        count = 0
        for m in 0...H do
          for n in 0...W do
            # どちらかからの距離がD以下、'.'である時
            if grid[m][n] != '#'
              if  (((i - m).abs + (j - n).abs) <= D) || (((k - m).abs + (l - n).abs <= D))
                count += 1
              end
            end
          end
        end
        result = count if result < count
      end
    end
  end
end

puts result
