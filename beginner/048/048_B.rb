# 非負の整数 a, b (a≤b) と、正の整数 x が与えられます。 a 以上 b 以下の整数のうち、x で割り切れるものの個数を求めてください。

# 制約
# 0≤a≤b≤10^18
# 1≤x≤10^18

a,b,x = gets.chomp.split(' ').map(&:to_i)

all = b / x
exp = (a - 1) / x

puts result = all - exp
