N,M = gets.chomp.split(' ').map(&:to_i)
sell_price = gets.chomp.split(' ').map(&:to_i).sort
by_price = gets.chomp.split(' ').map(&:to_i).sort

p sell_price
pp by_price
