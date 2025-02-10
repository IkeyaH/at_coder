# def max(a, b)
#   [a,b].max
# end
# 最終系に注目する、だったな。

# 数字は（昇順に）ソート
# 小さい側を真ん中に持っていく、ようなものにする？

N = gets.to_i
nums = gets.split.map(&:to_i).sort
sum = nums.sum
syo = sum / N
amari = sum % N

# 最終系
fin = Array.new(N, 0)
for i in 0...N do
  if N - (i + 1) < amari
    fin[i] = syo + 1
  else
    fin[i] = syo
  end
end

ans = 0
for i in 0...N do
  if fin[i] > nums[i]
    ans += fin[i] - nums[i]
  end
end

puts ans
