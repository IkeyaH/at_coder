H, W, D = gets.split.map(&:to_i)
grids = []
H.times { grids << gets.chomp }

ans = 0
H.times do |i|
  W.times do |j|
    next if grids[i][j] != '.'

    H.times do |n|
      W.times do |m|
        next if grids[n][m] != '.'

        c = 0
        H.times do |x|
          W.times do |y|
            next if grids[x][y] != '.'
            if (((x-i).abs + (y-j).abs) <= D) || (((x-n).abs + (y-m).abs) <= D)
              c += 1
            end
          end
        end
        ans = [ans, c].max
      end
    end
  end
end

puts ans
