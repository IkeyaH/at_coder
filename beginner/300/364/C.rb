N, X, Y = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort { |a, b| b <=> a }
B = gets.split.map(&:to_i).sort { |a, b| b <=> a }

suma = 0
sumb = 0
c = 0
N.times do |i|
  c += 1
  suma += A[i]
  sumb += B[i]
  break if suma > X
  break if sumb > Y
end

puts c
