N = gets.to_i
nums = gets.chomp.split(' ').map(&:to_i)
nums.sort!

for i in 0...N do
  cur = nums[i]
  ne = nums[i + 1]

  if ne - cur != 1
    puts cur + 1
    break
  end
end
