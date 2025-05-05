H, W = gets.split.map(&:to_i)
grids = []
H.times { grids << gets.chomp }

ans = 0
H.times do |i|
  W.times do |j|
    next if grids[i][j] == '#'
    # 横に敷く
    if i+1 <= H-1
      ans += 1 if grids[i+1][j] == '.'
    end
    # 縦に敷く
    if j+1 <= W-1
      ans += 1 if grids[i][j+1] == '.'
    end
  end
end

puts ans
