# check: 約数の求め方
N = gets.to_i
n_root = Integer.sqrt(N)

def f(a,b)
  a_len = a.to_s.length
  b_len = b.to_s.length
  return [a_len, b_len].max
end

ans = Float::INFINITY

1.upto(n_root).each do |i|
  if N % i == 0
    i2 = N / i
    ans = [ans, f(i, i2)].min
  end
end

puts ans
