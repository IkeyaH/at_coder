N, Q = gets.split.map(&:to_i)
s = gets.chomp

count = 0
(N-2).times do |i|
  count += 1 if s[i,3] == 'ABC'
end

ans = []
Q.times do
  _x, c = gets.chomp.split
  x = _x.to_i - 1
  # 関わる場所にABCがあれば引いておく
  3.times do |i|
    count -= 1 if s[x-i, 3] == 'ABC'
  end
  # 入れ替え
  s[x] = c
  # 入れ替え後のABC数
  3.times do |i|
    count += 1 if s[x-i, 3] == 'ABC'
  end
  ans << count
end

puts ans
