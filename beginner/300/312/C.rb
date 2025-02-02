N,M = gets.chomp.split(' ').map(&:to_i)
sell_price = gets.chomp.split(' ').map(&:to_i).tally
# 買い手は、その値段なら買う = その値段 +1したら買う人の人数から減らして良いので、+1する。
by_price = gets.chomp.split(' ').map{ |n| n.to_i+1 }.tally

sell_price.default = 0
by_price.default = 0

keys = (sell_price.keys | by_price.keys).sort

s_num = 0
b_num = M

keys.each do |k|
  s_num += sell_price[k]
  b_num -= by_price[k]

  if s_num >= b_num
    puts k
    exit
  end
end
