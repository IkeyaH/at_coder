N = gets.to_i
nums = gets.split.map(&:to_i)

ans = 0
N.times do |i|
  ans += nums[i] if (i+1).odd?
end

puts ans
