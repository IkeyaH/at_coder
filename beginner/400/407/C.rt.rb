# 後ろから考えるパターン
s = gets.chomp.split('')

cnt, x = 0, 0
while s.length != 0
  while true # 文字一つに対し10回でも 5 * 10^6くらいだからOK
    d = s.last.to_i
    break if (d-x) % 10 == 0
    cnt += 1
    x += 1
  end
  s.pop
  cnt += 1
end

puts cnt

