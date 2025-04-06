to = 400
a = gets.to_i

if to % a == 0
  puts to / a
else
  puts '-1'
end
