Q = gets.to_i

head_cum_arr = [0]
out_snake_num = 0
out_snakes_length = 0

Q.times do
  input = gets.chomp.split(' ').map(&:to_i)
  if input.length == 2
    if input[0] == 1
      head_cum_arr.push(head_cum_arr [-1] + input[1])
    else
      head_point = out_snake_num + input[1] - 1
      puts head_cum_arr[head_point] - out_snakes_length
    end
  else
    out_snake_num += 1
    out_snakes_length += head_cum_arr[out_snake_num] - head_cum_arr[out_snake_num - 1]
  end
end
