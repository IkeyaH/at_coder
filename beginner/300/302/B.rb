H, W = gets.chomp.split(' ').map(&:to_i)
strs = []
H.times do
  strs << gets.chomp.split('')
end

EX = 'snuke'

result = []

# 縦
strs.each_with_index do |str, i|
  if H - i >= 5
    for j in 0...W do
      tmp = []
      5.times do |k|
        tmp.push(strs[i + k][j])
      end
      if tmp.join == EX
        5.times do |u|
          result << [i + 1 + u, j + 1]
        end
      elsif tmp.reverse.join == EX
        5.times do |u|
          result << [i + 1 + u, j + 1]
        end
        result.reverse!
      end
    end
  end
end

# 横
strs.each_with_index do |str, i|
  str.each_with_index do |s, j|
    if W - 1 - j >= 4
      tmp = str.slice(j..(j + 4))
      if tmp.join == EX
        5.times do |k|
          result << [i + 1, j + k + 1]
        end
      elsif tmp.reverse.join == EX
        5.times do |k|
          result << [i + 1, j + k + 1]
        end
        result.reverse!
      end
    end
  end
end

# 右下
strs.each_with_index do |str, i|
  if H - i >= 5
    str.each_with_index do |s, j|
      if W - j >= 5
        tmp = []
        5.times do |k|
          tmp << strs[i + k][j + k]
        end
        if tmp.join == EX
          5.times do |m|
            result << [i + m + 1, j + m + 1]
          end
        elsif tmp.reverse.join == EX
          5.times do |m|
            result << [i + m + 1, j + m + 1]
          end
          result.reverse!
        end
      end
    end
  end
end

# 左下
strs.each_with_index do |str, i|
  if H - i >= 5
    str.each_with_index do |s, j|
      if j >= 4
        tmp = []
        5.times do |k|
          tmp << strs[i + k][j - k]
        end
        if tmp.join == EX
          5.times do |m|
            result << [i + m + 1, j - m + 1]
          end
        elsif tmp.reverse.join == EX
          5.times do |m|
            result << [i + m + 1, j - m + 1]
          end
          result.reverse!
        end
      end
    end
  end
end

result.each do |r|
  puts r.join(' ')
end
