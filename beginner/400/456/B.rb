a_1 = gets.split.map(&:to_i)
a_2 = gets.split.map(&:to_i)
a_3 = gets.split.map(&:to_i)

count = 0

6.times do |i|
  6.times do |j|
    6.times do |k|
      num = [a_1[i], a_2[j], a_3[k]]
        if num.include?(4) && num.include?(5) && num.include?(6)
          count += 1
        end
    end
  end
end

if count == 0 
  puts 0
else
  puts count.to_f / 216
end
