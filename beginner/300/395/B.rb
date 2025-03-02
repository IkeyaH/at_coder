N = gets.to_i

ans = Array.new(N) { Array.new(N, '#') }

for i in 1..N do
  j = N + 1 - i
  next if i > j
  if i.even?
    for x in 1..N do
      for y in 1..N do
        next if x <= i || x >= j || y <= i || y >= j
        ans[x - 1][y - 1] = '#'
      end
    end
  end
  if i.odd?
    for x in 1..N do
      for y in 1..N do
        next if x <= i || x >= j || y <= i || y >= j
        ans[x - 1][y - 1] = '.'
      end
    end
  end
end

ans.each do |a|
  puts a.join
end
