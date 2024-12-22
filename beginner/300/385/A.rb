a, b, c =  gets.chomp.split(' ').map(&:to_i)

if a == b && b == c
  puts 'Yes'
elsif a + b == c || a + c == b || b + c == a
  puts 'Yes'
else
  puts 'No'
end
