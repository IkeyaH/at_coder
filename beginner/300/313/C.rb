# https://atcoder.jp/contests/abc313/tasks/abc313_c
# 操作が何回でもできるような問題
# 不変量に注目（今回は全体の合計・ソート結果）

N = gets.to_i
nums = gets.chomp.split(' ').map(&:to_i).sort

sum = nums.sum
quot = sum / N
remain = sum % N
tmp = N - remain

expect_arr = Array.new(N){|i| i < tmp ? quot : quot + 1 }

result = 0

for i in 0...N do
  if expect_arr[i] > nums[i]
    result += expect_arr[i] - nums[i]
  end
end

puts result
