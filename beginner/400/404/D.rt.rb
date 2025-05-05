N, M = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)
Z = Array.new(N) { Array.new }

M.times do |i|
  _, *a = gets.split.map(&:to_i)
  a.each { |z| Z[z-1] << i }
end

ans = Float::INFINITY
(3**N).times do |tri|
  tri = tri.digits(3)
  cost = 0
  animals = Array.new(M, 0)
  tri.each_with_index do |t, i|
    next if t.zero?
    cost += C[i] * t
    zoo = Z[i]
    zoo.each { |z| animals[z] += t }
  end
  next if animals.any? { |animal| animal < 2 } || cost > ans
  ans = cost
end

puts ans
