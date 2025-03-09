N = gets.to_i
grids = Array.new(7)

grids[0] = ['#']

for i in 1..6 do
  g = Array.new(3**i) { Array.new(3**i) {''} }
  for gi in 0..(3**i - 1) do
    for gj in 0..(3**i - 1) do
      c_b = 3**(i-1)
      c_u = 3**(i-1) * 2 - 1
      if gi >= c_b && gi <= c_u && gj >= c_b && gj <= c_u
        g[gi][gj] = '.'
      else
        ti = gi % 3**(i - 1)
        tj = gj % 3**(i - 1)
        g[gi][gj] = grids[i - 1][ti][tj]
      end
    end
  end
  grids[i] = g
end

grids[N].each do |g|
  if N != 0
    puts g.join
  else
    puts g
  end
end
