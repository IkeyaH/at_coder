N = gets.to_i


if N.even?
  puts ans = '-' * (N/2-1) + '==' + '-' * (N/2-1)
else
  puts ans =  '-' * (N/2) + '=' + '-' * (N/2)
end
