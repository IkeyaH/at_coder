x = gets.to_i

ok = false

6.times do |i|
  6.times do |j|
    6.times do |k|
      ok = true if i + j + k + 3 == x
    end
  end
end

if ok
  puts 'Yes'
else
  puts 'No'
end