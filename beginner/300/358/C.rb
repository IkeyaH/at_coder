N, M = gets.split.map(&:to_i)
# それぞれの売り場で売っているポップコーンを2進数で表す
# で、すべて1になればOKにする。総当たり。
# TLE

temp = (1 << M) - 1

st = Array.new(N)
N.times do |i|
  k = gets.chomp.split('')
  num = 0
  M.times do |j|
    num += 2**(M-1-j) if k[j] == 'o'
  end
  st[i] = num
end

# お店の数分順列
ans = Float::INFINITY
[*0...N].permutation do |pm|
  now = 0
  count = 0
  pm.each do |p|
    now = now | st[p]
    count += 1
    break if now == temp
    break if count >= ans
  end
  ans = [ans, count].min
end

puts ans
