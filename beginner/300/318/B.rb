N = gets.to_i
inputs = []
grid = Array.new(100) {Array.new(100, '.')}


N.times do
  inputs << gets.chomp.split(' ').map(&:to_i)
end

inputs.each_with_index do |inp, i|
  w_s = inp[0]
  w_e = inp[1]
  h_s = inp[2]
  h_e = inp[3]

  for j in h_s...h_e
    tmp = '#' * (w_e - w_s)
    grid[j][w_s...w_e] = tmp.split('')
  end
end

count = 0
grid.each do |g|
  count += g.count('#')
end

puts count
