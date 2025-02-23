N = gets.to_i
nums = gets.split.map(&:to_i)
sorted_nums = nums.sort
cums = Array.new(N + 1, 0)

for i in 0...N do
  cums[i + 1] = sorted_nums[i] + cums[i]
end

tot = cums[-1]
ans = Array.new(N, 0)

for i in 0...N do
  ta = nums[i]
  ti = sorted_nums.bsearch_index { |x| x > ta }
  if ti == nil
    ans[i] = 0
  else
    ans[i] = tot - cums[ti]
  end
end

puts ans.join(' ')
