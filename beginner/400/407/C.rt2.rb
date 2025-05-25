s = gets.chomp.split('')

cnt, x = 0, 0
while s.length != 0
  while true
    d = s.last.to_i
    t = x % 10
    # x回前 = 10回で1回転するので、%10を考慮すれば良い
    # x回前 = d - t
    # それが0であれば終了、そうでなければ戻す回数を増やしてあげる
    break if (d - t == 0)
    x += 1
    cnt += 1
  end
  cnt += 1
  s.pop
end

puts cnt

