N = gets.to_i

f2 = true
f3 = true
n = N

while f2
  if n.even?
    n = n / 2
  else
    f2 = false
  end
end

while f3
  if n % 3 == 0
    n = n / 3
  else
    f3 = false
  end
end

puts n == 1 ? 'Yes' : 'No'
