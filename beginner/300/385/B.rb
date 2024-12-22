H, W, X, Y = gets.chomp.split(' ').map(&:to_i)
grid = []

H.times do
  grid << gets.chomp.split('')
end

T = gets.chomp.split('')

def next_index(x, y, d)
  next_x = nil
  next_y = nil
  if d == 'U'
    next_x = x - 1
    next_y = y
  elsif d == 'D'
    next_x = x + 1
    next_y = y
  elsif d == 'L'
    next_x = x
    next_y = y - 1
  else
    next_x = x
    next_y = y + 1
  end

  if next_x < 0 || next_x > H - 1 || next_y < 0 || next_y > W - 1
    return [x, y]
  else
    return [next_x, next_y]
  end
end

now_x = X - 1
now_y = Y - 1

m_t = T.length

homes = []

m_t.times do |i|
  next_x, next_y = next_index(now_x, now_y, T[i])
  if grid[next_x][next_y] == '#'
    next
  elsif grid[next_x][next_y] == '.'
    now_x = next_x
    now_y = next_y
  else
    if !homes.include?([next_x, next_y])
      homes << [next_x, next_y]
    end
    now_x = next_x
    now_y = next_y
  end
end

result = [now_x + 1, now_y + 1, homes.length]
puts result.join(' ')
