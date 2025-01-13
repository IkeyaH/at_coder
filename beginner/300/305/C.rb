H, W = gets.split(' ').map(&:to_i)
grid = H.times.map { gets.chomp.split('') }

def isCookieWas?(grid, h, w, max_h, max_w)
  dirs = [
    [-1, -1],
    [-1, 0],
    [-1, 1],
    [0, 1],
    [0, -1],
    [1, -1],
    [1, 0],
    [1, 1]
  ]

  cookie_count = 0
  cookie_place = []
  dirs.each do |d|
    e_h = h + d[0]
    e_w = w + d[1]

    if e_h >= 0 && e_h < max_h && e_w >= 0 && e_w < max_w # 範囲内か
      if grid[e_h][e_w] == '#'
        cookie_count += 1
        cookie_place << [e_h, e_w]
      end
    end
  end

  if cookie_count >= 3
    f_h = nil
    f_w = nil

    tate_flag = false
    yoko_flag = false
    cookie_place.each_with_index do |c, i|
      if i == 0
        f_h = c[0]
        f_w = c[1]
      else
        if c[0] != f_h
          tate_flag = true
        end
        if c[1] != f_w
          yoko_flag = true
        end
      end
    end
  end


  if tate_flag == true && yoko_flag == true
    return true
  else
    return false
  end
end

result = []

for i in 0...H do
  break if result.length > 0
  for j in 0...W do
    break if result.length > 0
    if grid[i][j] == '.'
      if isCookieWas?(grid, i, j, H, W)
        result  = [i + 1, j + 1]
        break
      end
    end
  end
end

puts result.join(' ')
