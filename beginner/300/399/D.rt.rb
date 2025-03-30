T = gets.to_i

def solve
  n = gets.to_i
  a = gets.split.map { |x| x.to_i - 1 }
  n2 = n*2
  cand = Array.new(n) { Array.new }
  n2.times { |i| cand[a[i]] << i }

  s = Set.new
  (n2-1).times do |i|
    x, y = a[i], a[i+1]
    x, y = y, x if x > y
    next if x == y
    s.add([x,y])
  end

  ans = 0
  s.each do |x, y|
    xl, xr = cand[x]
    yl, yr = cand[y]
    next if (xl - xr).abs == 1
    next if (yl - yr).abs == 1
    ans += 1 if (xl - yl).abs == 1 && (xr - yr).abs == 1
  end
  ans
end

result = []
T.times do
  result << solve()
end

puts result
