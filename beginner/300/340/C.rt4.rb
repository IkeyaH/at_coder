N = gets.to_i

def calc(num, memo)
  return 0 if num < 2
  return memo[num] if memo.key?(num)
  memo[num] = num + calc((num+1)/2, memo) + calc(num/2, memo)
end

m = {}

puts calc(N, m)

