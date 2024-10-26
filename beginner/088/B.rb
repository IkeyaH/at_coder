card_num = gets.chomp.to_i
numbers = gets.chomp.split(' ').map(&:to_i)

sorted_numbers_desc = numbers.sort_by { |a| -a }

alice = 0
bob = 0

for i in 0..(sorted_numbers_desc.length - 1) do
  if i.even?
    alice += sorted_numbers_desc[i]
  else
    bob += sorted_numbers_desc[i]
  end
end

puts (alice - bob)
