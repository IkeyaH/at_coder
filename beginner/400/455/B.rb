H, W = gets.chomp.split(' ').map(&:to_i)
grids = []
H.times do
  grids << gets.chomp.chars
end

ans = 0

for h1 in 0...H do
  for h2 in (h1+1)..H do
    for w1 in 0...W do
      for w2 in (w1+1)..W do
        flag = true
        for i in h1...h2 do
          for j in w1...w2 do
            flag = false if grids[i][j] != grids[h1 + h2 - i - 1][w1 + w2 - j - 1]
          end
        end
        ans += 1 if flag
      end
    end
  end
end

puts ans

