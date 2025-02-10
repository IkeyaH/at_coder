N, M = gets.split.map(&:to_i)
seller = gets.split.map(&:to_i).tally
buyer = gets.split.map { |a| a.to_i + 1 }.tally

# キーがない場合、0が返るように設定必要
seller.default = 0
buyer.default = 0

keys = (seller.keys | buyer.keys).sort

s_num = 0
b_num = M

keys.each do |k|
  s_num += seller[k]
  b_num -= buyer[k]

  if s_num >= b_num
    puts k
    break
  end
end
