X, Y = gets.split.map(&:to_i)

n = 0
6.times do |i|
  i += 1
  6.times do |j|
    j += 1
    if i+j >= X || (i-j).abs >= Y
      n += 1
    end
  end
end

if n == 0
  puts 0
else
  puts n.to_f / 36
end
