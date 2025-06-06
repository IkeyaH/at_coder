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

# popcount（2新数にした際、1がいつくあるかカウントする）
def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

# string.slice(4,5)
# index 4から5文字slice
# string[4,5]と同じ
# 最初から範囲を超えているとnil, 一部含まれているとある分だけ出力される
