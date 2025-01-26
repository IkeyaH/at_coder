numbers = gets.chomp.split(' ').map(&:to_i)
collects = [1,2,3,4,5]

set = Set.new

for i in 0..4 do
  if numbers[i] != collects[i]
    set.add(i)
  end
end

array_set = set.to_a

if array_set.count == 2 && (array_set[0] - array_set[1]).abs == 1
  puts 'Yes'
else
  puts 'No'
end
