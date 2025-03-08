N = gets.to_i
nums = gets.split.map(&:to_i)

count = 1
ans = false

bef = nums[0]

for i in 1...N do
  if nums[i] == bef
    count += 1
    ans = true if count == 3
    bef = nums[i]
  else
    count = 1
    bef = nums[i]
  end
end

puts ans ? 'Yes' : 'No'
