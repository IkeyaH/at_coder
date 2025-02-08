C = 3.times.map { gets.split.map(&:to_i) }.flatten
LINES = [
  [0,1,2], [3,4,5], [6,7,8],
  [0,3,6], [1,4,7], [2,5,8],
  [0,4,8], [2,4,6]
]
# それぞれのますを当てはめた順列ではなく、それぞれのマスを何番目に開けたかを示す順列として捉える
cnt = 0
tot = 0
[*0..8].permutation.to_a.each do |p|
  flag = LINES.any? do |line|
    la, lb, _l = (p & line).map { |i| C[i] }
    la == lb
  end
  cnt += 1 unless flag
  tot += 1
end


puts cnt / tot.to_f
