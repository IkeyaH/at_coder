bords = []
H = 8

H.times do
  line = gets.chomp.split('')
  bords << line
end

result_map = Array.new(H) { Array.new(H, true) }

bords.each_with_index do |bord, i|
  bord.each_with_index do |b, j|
    if bords[i][j] == '#'
      H.times do |k|
        result_map[i][k] = false
        result_map[k][j] = false
      end
    end
  end
end

result = 0
result_map.each do |re|
  result += re.count(true)
end

puts result
