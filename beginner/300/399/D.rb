T = gets.to_i

def solve()
  n = gets.to_i
  a = gets.split.map { |x| x.to_i - 1 }
  n2 = n * 2
  is = Array.new(n) { Array.new }

  n2.times { |i| is[a[i]].push(i) } # カップル二人の位置を配列に保存

  # 隣り合う数字の組み合わせのみで処理するため、それを保持する。
  # setにするのは、同じ組み合わせを二度処理したくないため
  cand = Set.new
  (n2-1).times do |i|
    x, y = a[i], a[i+1]
    x, y = y, x if x > y
    next if x == y
    cand.add([x, y])
  end

  ans = 0
  cand.each do |x, y|
    xl, xr = is[x][0], is[x][1]
    yl, yr = is[y][0], is[y][1]
    next if xl+1 == xr
    next if yl+1 == yr
    ans += 1 if (xl-yl).abs == 1 && (xr-yr).abs == 1
  end
  ans
end

re = []
T.times do
  re << solve
end

puts re
