
grids = Array.new(7) { Array.new }
grids[0] = ['#']

1.upto(6).each do |i|
  s = 3**i
  bs = 3**(i-1)
  s.times do |h|
    g = ''
    s.times do |w|
      if h >= bs && h <= 2*bs-1 && w >= bs && w <= 2*bs-1
        g = g + '.'
      else
        bh = h % bs
        bw = w % bs
        g = g + grids[i-1][bh][bw]
      end
    end
    grids[i] << g
  end
end

N = gets.to_i

puts grids[N]