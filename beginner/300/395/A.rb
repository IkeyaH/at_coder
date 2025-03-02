N = gets.to_i
nums = gets.split.map(&:to_i)

ok = true
prev = nums[0]

for i in 1...N do
  now = nums[i]
  if now <= prev
    ok = false
  end
  prev = now
end

puts ok ? 'Yes' : 'No'
