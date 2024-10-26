
max, gte, lte = gets.chomp.split(' ').map(&:to_i)

# 10進数の場合 各桁の求め方
def findSumOfDigits(num)
  sum = 0
  while (num > 0)
    sum += num % 10
    num = num / 10
  end
  return sum
end

total = 0

for i in 1..max do
  sum = findSumOfDigits(i)
  if sum <= lte && sum >= gte
    total += i
  end
end

puts total
