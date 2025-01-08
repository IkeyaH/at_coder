H, W = gets.chomp.split(' ').map(&:to_i)
grids = []
H.times do
  grids << gets.chomp.split('')
end

result = Array.new([H, W].min, 0)

def isGridIn?(nw,ne,sw,se)
  if nw[0] < 0 || nw[1] < 0
    return false
  elsif ne[0] < 0 || ne[1] >= W
    return false
  elsif sw[0] >= H || sw[1] < 0
    return false
  elsif se[0] >= H || se[1] >= W
    return false
  end

  return true
end

# countは、何度目のメソッド利用かを表す
def get_next_points(start_h, start_w, count)

  directions = [
    [-1, -1],
    [-1, 1],
    [1 ,-1],
    [1, 1]
  ]

  nw = [start_h + (count * directions[0][0]), start_w + (count * directions[0][1])]
  ne = [start_h + (count * directions[1][0]), start_w + (count * directions[1][1])]
  sw = [start_h + (count * directions[2][0]), start_w + (count * directions[2][1])]
  se = [start_h + (count * directions[3][0]), start_w + (count * directions[3][1])]

  isGridIn = isGridIn?(nw, ne, sw, se)

  if isGridIn
    return [
      nw,
      ne,
      sw,
      se
    ]
  else
    return false
  end
end

for i in 0...H do
  for j in 0...W do
    if grids[i][j] == '#'
      cnt_flag = true
      count = 0
      while cnt_flag
        next_points = get_next_points(i, j, count + 1)
        if next_points != false
          ne_position = grids[next_points[0][0]][next_points[0][1]]
          nw_position = grids[next_points[1][0]][next_points[1][1]]
          se_position = grids[next_points[2][0]][next_points[2][1]]
          sw_position = grids[next_points[3][0]][next_points[3][1]]
          if ne_position == '#' && nw_position == '#' && se_position == '#' && sw_position == '#'
            count += 1
          else
            cnt_flag = false
          end
        else
          cnt_flag = false
        end
      end

      if count != 0
        result[count - 1] = result[count - 1] += 1
      end

    end
  end
end

puts result.join(' ')

