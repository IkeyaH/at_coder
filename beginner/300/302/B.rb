N = gets.to_i
numbers = gets.chomp.split(' ').map(&:to_i)

while true
  count = 0
  numbers.each_with_index do |n, i|
    if n != numbers.length - 1 && (n - numbers[i + 1]).abs == 1
      count += 1
    end
  end
  break if count == numbers.length - 1

  for i in 0...(numbers.length - 1) do
    if (numbers[i] - numbers[i + 1]).abs != 0
      big = [numbers[i], numbers[i + 1]].max
      small = [numbers[i], numbers[i + 1]].min
      arr = ((small + 1)..(big - 1)).map { |a| a }

      if numbers[i] == big
        arr.each do |a|
          numbers.insert(i + 1, a)
        end
      else
        arr.reverse.each do |a|
          numbers.insert(i + 1, a)
        end
      end
      break
    end
  end
end

p numbers
