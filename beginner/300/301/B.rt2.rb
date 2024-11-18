N = gets.to_i
numbers = gets.chomp.split(' ').map(&:to_i)

result = ''
for i in 0..(N - 1) do
  if i == N - 1 || (numbers[i] - numbers[i + 1]).abs == 1
    result = result + numbers[i].to_s + ' '
  else
    small, big = [numbers[i], numbers[i + 1]].sort

    arr = ((small + 1)...big).map {|a| a }
    arr.reverse! if small == numbers[i + 1]
    result = result + numbers[i].to_s + ' '
    arr.each do |a|
      result = result + a.to_s + ' '
    end
  end
end

puts result
