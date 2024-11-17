# https://atcoder.jp/contests/abc380/tasks/abc380_d
# 反転を繰り返す、2進数を利用する良い問題なような。

S = gets.chomp
Q = gets.chomp.to_i
K = gets.chomp.split(' ').map(&:to_i)
s_len = S.length

result = []

K.each do |k|
  bit_one_count = ((k - 1) / s_len).to_s(2).count('1')
  if bit_one_count.even?
    result << S[(k % s_len) - 1]
  else
    result << S[(k % s_len) - 1].swapcase
  end
end

puts result.join(' ')

