X = gets.to_i

cont_flag = true
result_int = -1
count = 1
now_num = X

while cont_flag
  if now_num / count == 1
    result_int = now_num
    cont_flag = false
  else
    now_num = now_num / count
    count += 1
  end
end

puts result_int
