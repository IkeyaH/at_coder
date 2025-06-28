# todo 面白いメソッドきた

# N = gets.to_i
# str = gets.chomp

# ans = str.scan(/ABC/).length
# puts ans

# p "foobarbazfoobarbaz".scan(/ba./)  # => ["bar", "baz", "bar", "baz"]
# それに該当する箇所の配列を返す。

s = 'aabcd'
arr = s.scan(/a./)
pp arr
↓
ruby B.ano.rb
["aa"]

# aa, abとはならず、
# 一度切り取られたものが再利用されることはないみたい
