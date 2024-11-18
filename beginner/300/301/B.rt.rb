N = gets.to_i
numbers = gets.chomp.split(' ').map(&:to_i)

while true
  count = 0
  for i in 0...(numbers.length - 1) do
    count += 1 if (numbers[i] - numbers[i + 1]).abs == 1
  end
  break if count == numbers.length - 1

  for i in 0...(numbers.length - 1) do
    if (numbers[i] - numbers[i + 1]).abs != 1
      big = [numbers[i], numbers[i + 1]].max
      small = [numbers[i], numbers[i + 1]].min

      arr = ((small + 1)...(big)).map {|a| a}
      if big == numbers[i]
        arr.each do |a|
          numbers.insert(i + 1, a)
        end
      else
        arr.reverse_each do |a|
          numbers.insert(i + 1, a)
        end
      end
      break
    end
  end
end

puts numbers.join(' ')
