y_500 = gets.chomp.to_i
y_100 = gets.chomp.to_i
y_50 = gets.chomp.to_i

want_yen = gets.chomp.to_i

result = 0

for i in (0..y_500) do
  for j in (0..y_100) do
    for k in (0..y_50) do
      yen = (500*i) + (100*j) + (50*k)
      result += 1 if yen == want_yen
    end
  end
end

puts result
