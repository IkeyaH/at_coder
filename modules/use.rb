gets.chomp.split.map(&:to_i)
# 出現回数をハッシュで保持
gets.chomp.split.map(&:to_i).tally
# 順列を生成
# array.permutation
Hash.new { |hash, key| hash[key] = [] }

# R,L,U,D
dir = {
  'R' => [0, 1],
  'L' => [0, -1],
  'U' => [-1, 0],
  'D' => [1,0]
}
