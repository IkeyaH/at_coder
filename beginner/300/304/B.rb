n = gets.to_i

if n < 10**3 - 1
  puts n
elsif n < 10**4 - 1
  puts n.floor(-1)
elsif n < 10**5 - 1
  puts n.floor(-2)
elsif n < 10**6 - 1
  puts n.floor(-3)
elsif n < 10**7 - 1
  puts n.floor(-4)
elsif n < 10**8 - 1
  puts n.floor(-5)
else
  puts n.floor(-6)
end
