# num = gets.chomp.to_i

# kaijo_num = (1..num).inject { |before, now| before * now }

# flag = true
# sho = 0
# result = 0

# while flag
#   a = kaijo_num % (10.pow(9) + 7)
#   sho = kaijo_num / (10.pow(9) + 7)
#   result = a if a != 0
#   flag = false if a != 0
# end

# puts result

# 時間がかかりすぎるので改良
# 途中式のいつでも割って良い

# 参考: 3で割った数を求める
# 100 / 3 = 33 あまり 1 -> (33 * 3) + 1
# ((33 * 3) + 1) * 101 = {(33 * 3) * 101} + 101
# {(33 * 3) * 101} -> { 33 * 101 * 3 } なので、どうせ3で割り切れる。
# 気にするのは、あまり * 次の数 だけでよい

num = gets.chomp.to_i
now = 1
divisor = (10.pow(9) + 7)

for i in (1..num) do
  next_num = now * i
  next_num = next_num % divisor
  now = next_num
end

puts now
