a = gets.to_i

result = 0

for i in 1..9 do
  for j in 1..9 do
    result += i * j if i * j != a
  end
end

puts result
