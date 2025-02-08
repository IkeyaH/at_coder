# https://atcoder.jp/contests/abc392

nums = gets.split.map(&:to_i)
perm_n = nums.permutation

flag = false

perm_n.each do |p|
  flag = true if p[0] * p[1] == p[2]
end

puts flag ? 'Yes' : 'No'
