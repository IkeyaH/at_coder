x = gets.chomp.to_f

if x.to_s.split('.')[-1] == '0'
  puts x.to_i
else
  puts x
end
