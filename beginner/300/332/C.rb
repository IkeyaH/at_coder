N, M = gets.split.map(&:to_i)
s_arr = gets.split('').map(&:to_i)

remain_non = M
total_non = M
remain_logo = 0
total_logo = 0
ans = 0

s_arr.each do |s|
  if s == 1
    if remain_non > 0
      remain_non -= 1
    elsif remain_logo > 0
      remain_logo -= 1
    else
      total_logo += 1
      ans += 1
    end
  elsif s == 2
    if remain_logo > 0
      remain_logo -= 1
    else
      total_logo += 1
      ans += 1
    end
  else
    remain_non = total_non
    remain_logo = total_logo
  end
end

puts ans
