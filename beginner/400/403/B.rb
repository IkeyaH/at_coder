T = gets.chomp
U = gets.chomp

tl = T.length
ul = U.length
result = false

(tl - ul + 1).times do |i|
  count = 0
  ul.times do |j|
    if T[i+j] == '?' || T[i+j] == U[j]
      count += 1
    end
  end
  result = true if count == ul
end

if result
  puts 'Yes'
else
  puts 'No'
end
