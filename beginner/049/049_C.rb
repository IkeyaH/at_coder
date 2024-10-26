s = gets.chomp
s_reverse = s.reverse

arr = ['dream', 'erase', 'dreamer', 'eraser']
arr_reverse = arr.map(&:reverse)

stop_flag = true
result_flag = false
next_flag = false

while stop_flag
  stop_flag = false if s_reverse.length < 5
  break if stop_flag == false
  if s_reverse.length == 7 && s_reverse == arr_reverse[2]
    result_flag = true
  end
  if s_reverse.length >= 7 && s_reverse[0..6] == arr_reverse[2]
    s_reverse = s_reverse[7..-1]
    next_flag = true
  end
  if s_reverse.length == 6 && s_reverse == arr_reverse[3]
    result_flag = true
  end
  if s_reverse.length >= 6 && s_reverse[0..5] == arr_reverse[3]
    s_reverse = s_reverse[6..-1]
    next_flag = true
  end
  if s_reverse.length == 5 && ( s_reverse == arr_reverse[0] || s_reverse == arr_reverse[1] )
    result_flag = true
  end
  if s_reverse.length >= 5 && ( s_reverse[0..4] == arr_reverse[0] || s_reverse[0..4] == arr_reverse[1] )
    s_reverse = s_reverse[5..-1]
    next_flag = true
  end
  break if result_flag == true
  break if next_flag == false
end

puts result_flag ? 'YES' : 'NO'
