gets.chomp.split.map(&:to_i)
# 出現回数をハッシュで保持
gets.chomp.split.map(&:to_i).tally
# 順列を生成
# array.permutation
Hash.new { |hash, key| hash[key] = [] }
