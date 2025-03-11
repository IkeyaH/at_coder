N = gets.to_i
foods = gets.split.map(&:to_i)
a_arr = gets.split.map(&:to_i)
b_arr = gets.split.map(&:to_i)

# 食材は10個までという制約に注目する
max_a = Float::INFINITY
for i in 0...N do
  next if a_arr[i] == 0

  ta = foods[i] / a_arr[i]
  max_a = [ta, max_a].min
end

ans = 0
max_a.downto(0) do |ai|
  r = Array.new(N)
  for i in 0...N do
    r[i] = foods[i] - (a_arr[i] * ai)
  end

  tb = Float::INFINITY
  for i in 0...N do
    bn = 1001001001
    if b_arr[i] != 0
      bn = r[i] / b_arr[i]
    end
    tb = [bn, tb].min
  end

  ans = [ans, (ai + tb)].max
end

puts ans
