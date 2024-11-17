# https://atcoder.jp/contests/abc380/tasks
# 本番では結構面倒な実装をしたが、split, swapのような想定でいけるみたい。

N, K = gets.chomp.split(' ').map(&:to_i)
str = gets.chomp

# split
len = str.length
idx = [0] + (1...len).select { |i| str[i - 1] != str[i] } + [len]
splited_str = (0...(idx.length - 1)).map { |i| str.slice(idx[i]...idx[i + 1]) }

# swap
idx_1 = 0
if str[0] == '0'
  idx_1 = 2 * K - 1
else
  idx_1 = 2 * K - 2
end

str_1 = splited_str[idx_1]
str_2 = splited_str[idx_1 - 1]

splited_str[idx_1] = str_2
splited_str[idx_1 - 1] = str_1

puts splited_str.join

# メモ：分割位置配列において、最初と最後を入れる必要性について
# splited_str（分割文字配列）を作る際、一つめは最初の文字 ~ 最初の分割位置 - 1
# 最後は最後の分割位置 ~ 最後の文字となる
# よって、分割位置の配列に最初と最後のindex番号を入れる。なるほど。
