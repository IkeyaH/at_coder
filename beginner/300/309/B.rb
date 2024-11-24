N = gets.to_i
grid = []
N.times do
  grid << gets.chomp.split('')
end

new_grid = []

grid.each_with_index do |g, i|
  now = g.dup
  if i == 0
    now = now.rotate(-1)
    under = grid[i + 1]
    now[0] = under[0]
    new_grid << now
  elsif i == N - 1
    now = now.rotate
    over = grid[i - 1]
    now[-1] = over[-1]
    new_grid << now
  else
    under = grid[i + 1]
    over = grid[i - 1]
    now[0] = under[0]
    now[-1] = over[-1]
    new_grid << now
  end
end

new_grid.each { |n| puts n.join }
