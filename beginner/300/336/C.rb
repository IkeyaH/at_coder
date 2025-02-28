# 5進数

N = gets.to_i

five_s = (N - 1).to_s(5)

ans = ''
five_s.each_char do |c|
  ans = ans + (c.to_i * 2).to_s
end

puts ans
