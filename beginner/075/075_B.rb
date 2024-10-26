# h, w = gets.chomp.split(' ').map(&:to_i)

# grid = []

# result = []

# h.times do |i|
#   grid << gets.chomp.split('')
#   result << []
# end

# grid.each_with_index do |a, i|
#   a.each_with_index do |b, j|
#     y = i
#     x = j
#     result[y] << '#' if grid[y][x] == '#'
#     next if grid[y][x] == '#'
    
#     bomb_count = 0
#     for num1 in -1..1 do
#       for num2 in -1..1 do
#         yy = y + num1
#         xx = x + num2
#         if grid[yy] != nil && grid [yy][xx] != nil
#           if grid[yy][xx] == '#'
#             bomb_count += 1 
#           end
#         end
#       end
#     end

#     result[y] << bomb_count
#   end
# end

# result.each do |r|
#   puts r.join
# end

# 境界チェックを厳密に定義したバージョン
# これでないとエラーになる
# !!（Ruby の配列では負のインデックスは末尾からのアクセスを意味します）。
h, w = gets.chomp.split(' ').map(&:to_i)

grid = []

result = []

h.times do |i|
  grid << gets.chomp.split('')
  result << []
end

grid.each_with_index do |a, i|
  a.each_with_index do |b, j|
    y = i
    x = j
    result[y] << '#' if grid[y][x] == '#'
    next if grid[y][x] == '#'
    
    bomb_count = 0
    for num1 in -1..1 do
      for num2 in -1..1 do
        yy = y + num1
        xx = x + num2
        if yy >= 0 && yy < h && xx >= 0 && xx < w && grid[yy][xx] == '#'
          bomb_count += 1 
        end
      end
    end

    result[y] << bomb_count
  end
end

result.each do |r|
  puts r.join
end

