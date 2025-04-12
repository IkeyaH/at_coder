N, M = gets.chomp.split.map(&:to_i)
a_arr = gets.chomp.split.map(&:to_i)
b_arr = gets.chomp.split.map(&:to_i)
bm = b_arr.max

ids = Array.new(bm+1, -1)

# 後ろの人は、2以下のものしか流れてこない。
# 3 ~ 8 は、全て0(+1)の人が食べる
# max は 2 に更新され、それ以外の人は飛ばされる。
# よって、内部でループを回してN^2、、、？と思いきや、N（2nくらい？）で解ける
# また、それぞれの寿司に、、、ということではなく、M ≤ 2 * 10**5 ということを利用し、
# maxまで全ての数字を持っているという形である。

N.times do |i|
  e = a_arr[i] # eat_level的なe
  if e <= bm
    ids[e..bm] = Array.new((bm - e + 1), i+1)
    bm = e - 1
  end
  break if bm <= 0
end

b_arr.each do |b|
  puts ids[b]
end
