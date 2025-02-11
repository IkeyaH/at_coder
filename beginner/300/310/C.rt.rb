N = gets.to_i
s_hash = {}

N.times do
  s = gets.chomp
  s_reverse = s.reverse
  if s_hash.key?(s)
    s_hash[s] = s_hash[s] + 1
  elsif s_hash.key?(s_reverse)
    s_hash[s_reverse] = s_hash[s_reverse] + 1
  else
    s_hash[s] = 1
  end
end

puts s_hash.keys.length

# 単純に、reverseしたものとそうでないもの両方を用意し、
# 辞書順で小さいもののみ管理するset（重複なし）に保存していけばOKでもある。

