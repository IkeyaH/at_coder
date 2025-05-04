N = gets.to_i
arr = []

N.times do |i|
  a, b = gets.split.map(&:to_i)
  arr << [a, b, i+1]
end

sorted = arr.sort do |(xa, xb, xi), (ya, yb, yi)|
  comp = xa*(ya+yb) <=> ya*(xa+xb)
  comp == 0 ? xi <=> yi : -comp
end

puts sorted.map { |_, _, i| i }.join(' ')
