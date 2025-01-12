N, D = gets.chomp.split(' ').map(&:to_i)

snakes = []
N.times do
  t, l = gets.chomp.split(' ').map(&:to_i)
  snakes << [t, l]
end

results = []

for i in 1..D do
  max = 0
  snakes.each do |s|
    snake_w = s[0] * (s[1] + i)
    max = snake_w if snake_w > max
  end
  results << max
end

results.each  { |r| puts r }
