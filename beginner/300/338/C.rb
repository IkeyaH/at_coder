N = gets.to_i
foods = gets.split.map(&:to_i)
a_arr = gets.split.map(&:to_i)
b_arr = gets.split.map(&:to_i)


ans = 0
for x in 0...(10**7) do
  r = Array.new(N)
  ok = true
  for i in 0...N do
    t = foods[i] - a_arr[i] * x
    r[i] = t
    ok = false if t < 0
  end
  break if !ok

  y = 1001001001
  for i in 0...N do
    next if b_arr[i] == 0
    y = [y, r[i] / b_arr[i]].min
  end
  ans = [y+x, ans].max
end

puts ans
