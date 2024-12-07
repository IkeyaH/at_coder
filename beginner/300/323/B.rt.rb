N = gets.to_i

win_num = []

N.times do
  win_num << gets.chomp.count('o')
end
max = win_num.max

result = []

while max >= 0 do
  win_num.each_with_index do |w, i|
    result << i + 1 if w == max
  end
  max -= 1
end

puts result.join(' ')
