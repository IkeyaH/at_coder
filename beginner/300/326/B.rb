n = gets.to_i

result = nil

while true
  n_a = n.to_s.split('').map(&:to_i)
  hun = n_a[0]
  ten = n_a[1]
  one = n_a[2]

  if hun * ten == one
    result = n
    break
  else
    n += 1
  end
end

puts result
