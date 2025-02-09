# https://atcoder.jp/contests/abc319/tasks/abc319_c
# がっかり順番 / 全ての順番を求める、というモチベーション
# 3*3（0~8）の順列を用意し、それぞれで揃う通りについて確認する。
# もし一つでもがっかりがあれば終了（array.any）とか。

C = 3.times.map { gets.split.map(&:to_i) }.flatten
LINES = [
  [0,1,2],[3,4,5],[6,7,8],
  [0,3,6],[1,4,7],[2,5,8],
  [0,4,8],[2,4,6]
]

ans = 0
tot = 0
[*0..8].permutation.each do |p|
  flag = LINES.any? do |line|
    l1,l2,_l = (p & line).map { |i| C[i] }
    l1 == l2
  end
  ans += 1 unless flag
  tot += 1
end

puts ans.to_f / tot
