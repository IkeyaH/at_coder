N, M = gets.chomp.split(' ').map(&:to_i)
edges = Array.new(N) { Array.new(N, 0) }

def _max(a, b) = a > b ? a : b

M.times do
  a, b, c = gets.chomp.split(' ').map(&:to_i)
  a -= 1
  b -= 1
  edges[a][b] = c
  edges[b][a] = c
end

max = 0
[*0...N].permutation(N).each do |s|
  next if s[0] >= (N / 2) + 1

  sum = 0
  for i in 0...(N - 1)
    if edges[s[i]][s[i + 1]] == 0
      max = _max(sum, max)
      sum = 0
    else
      sum += edges[s[i]][s[i + 1]]
    end
  end
  max = _max(sum, max)
end

puts max
