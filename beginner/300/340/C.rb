N = gets.to_i

# 一度そのまま実装する
# 偶数の時は / 2の値がそのままに、奇数の時は1差がある値になることに注意
# TLE!

nums = [N]
pay = 0

while true do
  next_nums = []
  nums.each do |n|
    if n >= 2
      pay += n
      ne1 = (n.to_f / 2).floor
      ne2 = (n.to_f / 2).ceil
      next_nums << ne1 if ne1 > 1
      next_nums << ne2 if ne2 > 1
    end
  end
  if next_nums.length == 0
    break
  else
    nums = next_nums
  end
end

puts pay
