M = gets.to_i
days = gets.chomp.split(' ').map(&:to_i)

half = (days.sum + 1) / 2

count = 0

days.each_with_index do |d, i|
  total = count + days[i]
  if total >= half
    left_days = half - count

    puts i + 1
    puts left_days
    break
  else
    count = total
  end
end
