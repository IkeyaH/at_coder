L,R = gets.chomp.split(' ').map(&:to_i)

arr = [L,R]

if arr == [0,0] || arr == [1,1]
  puts 'Invalid'
elsif arr == [1,0]
  puts 'Yes'
elsif arr == [0,1]
  puts 'No'
end
