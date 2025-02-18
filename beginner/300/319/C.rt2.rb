c_arr = []
3.times do
  c_arr << gets.split.map(&:to_i)
end
# カードそれぞれの位置に対応する番号を表す
flat_c = c_arr.flatten

GAKKARI = [
  [0,3,6], [1,4,7], [2,5,8],
  [0,1,2], [3,4,5], [6,7,8],
  [0,4,8], [2,4,6]
]

# 全ての開ける順番に対して全探索する
# 0..8の順列を用意し、縦・横・斜めについてループを回す。がっかりが見つかった時点で次の開けるパターンに移行

tot = 0
count = 0

[*0..8].permutation.each do |per|
  # 積集合
  GAKKARI.each do |g|
    a, b, _c = per & g
    if flat_c[a] == flat_c[b]
      count += 1
      break
    end
  end
  tot += 1
end

puts (tot - count) / tot.to_f
