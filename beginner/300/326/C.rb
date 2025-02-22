N, M = gets.split.map(&:to_i)
pre = gets.split.map(&:to_i).sort

done = {}
ans = 0
for i in 0...N do
  next if done.key?(pre[i])
  done[pre[i]] = true
  t = pre[i] + M
  ni = pre.bsearch_index { |x| x >= t }
  ni = N if ni == nil
  num = ni - i
  ans = [num, ans].max
end

puts ans
[1, 1, 2, 3, 3, 4, 5, 5, 6, 9, 9, 9]
