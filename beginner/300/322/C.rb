N, M = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

ans = Array.new(N, 0)

for i in 1..N do
  n_d = arr.bsearch { |x| x >= i }
  ans[i - 1] = n_d - i
end

ans.each do |a|
  puts a
end
