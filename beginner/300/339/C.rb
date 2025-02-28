N = gets.to_i
a = gets.split.map(&:to_i)


now = 0

for i in 0...N do
  now = (now + a[i])
  if now < 0
    now = 0
  end
end

puts now
