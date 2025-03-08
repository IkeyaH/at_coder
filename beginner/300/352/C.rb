N = gets.to_i

mh = 0
ssum = 0

N.times do
  a, b = gets.split.map(&:to_i)
  ssum += a
  mh = [mh, (b - a)].max
end

puts ssum + mh
