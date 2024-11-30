N = gets.to_i
win_count = []

N.times do
  win_count << gets.chomp.split('').count('o')
end

result = []

max = win_count.max

for i in 0..max
  m = max - i
  win_count.each_with_index do |w, i|
    if w == m
      result << i + 1
    end
  end
end

puts result.join(' ')
