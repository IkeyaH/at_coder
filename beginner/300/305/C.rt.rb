# 単純に横の列のクッキーの数数えればいいよね的な解法

H, W = gets.split(' ').map(&:to_i)
grid = H.times.map { gets.chomp.split('') }

h_under, w_right = -1, -1
h_upper, w_left = 10000, 10000


for i in 0...H do
  for j in 0...W do
    if grid[i][j] == '#'
      h_upper = [h_upper, i].min
      h_under = [h_under, i].max
      w_left = [w_left, j].min
      w_right = [w_right, j].max
    end
  end
end

end_flag = false

for i in h_upper..h_under do
  break if end_flag == true
  for j in w_left..w_right do
    if grid[i][j] == '.'
      puts (i + 1).to_s + ' ' + (j + 1).to_s
      end_flag = true
      break
    end
  end
end
