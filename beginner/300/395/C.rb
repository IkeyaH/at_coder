N = gets.to_i
nums = gets.split.map(&:to_i)

numh = {}

min = Float::INFINITY

nums.each_with_index do |n, i|
  if numh.key?(n)
    numh[n].push(i)
    min = [min, (i - numh[n][-2]) + 1].min
  else
    numh[n] = [i]
  end
end

puts min == Float::INFINITY ? '-1' : min
