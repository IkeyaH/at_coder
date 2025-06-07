N = gets.to_i
T = gets.chomp
A = gets.chomp

ok = false
N.times do |i|
  ok = true if T[i] == 'o' && A[i] == 'o'
end

if ok
  puts 'Yes'
else
  puts 'No'
end
