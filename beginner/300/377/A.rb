s = gets.chomp.split('')

if s.include?('A') && s.include?('B') && s.include?('C')
  puts 'Yes'
else
  puts 'No'
end
