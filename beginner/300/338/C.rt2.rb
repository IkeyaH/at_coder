# N <= 10 という制約を利用する

N = gets.to_i
Q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

# a作れる最大の値を算出
max_a = Float::INFINITY

(0...N).each do |i|
  ta = 1001001001
  if A[i] != 0
    ta = Q[i] / A[i]
    max_a = [max_a, ta].min
  end
end

# aの数を一つずつ減らしていき、
# bとaの和の最大を取る
ans = max_a
max_a.downto(0) do |i|
  tb = 1001001001
  (0...N).each do |x|
    if B[x] != 0
      tb = [(Q[x] - (A[x] * i)) / B[x], tb].min
    end
  end
  ans = [ans, i + tb].max
end

puts ans
