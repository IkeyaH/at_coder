H, W = gets.chomp.split(' ').map(&:to_i)

grid = []
H.times do
  grid << gets.chomp.split('')
end

# 黒マスの左右上下最大値を記録する
r, d = -1, -1
l, u = 1000000,1000000

for i in 0...H do
  gr = grid[i]
  for j in 0...W do
    g = gr[j]
    if g == '#'
      r = [r, j].max
      d = [d, i].max
      l = [l, j].min
      u = [u, i].min
    end
  end
end

ok_1 = false
ok_2 = true

if r == -1
  grid.each do |gr|
    ok_1 = true if gr.include?('?')
  end
  puts ok_1 == true ? 'Yes' : 'No'
else
  for i in (u..d) do
    for j in (l..r) do
      if grid[i][j] == '.'
        ok_2 = false
      end
    end
  end
  puts ok_2 == true ? 'Yes' : 'No'
end

