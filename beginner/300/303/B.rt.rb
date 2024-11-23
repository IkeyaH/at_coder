# 解説後
# 表を作る、リーグ戦みたいな形。なるほど。

N, M = gets.chomp.split(' ').map(&:to_i)
numbers = []
M.times do
  numbers << gets.chomp.split(' ').map(&:to_i)
end

result_table = Array.new(N) { Array.new(N, false) }

# 初期値（自身はOKとする）
result_table.each_with_index do |r, i|
  r[i] = true
end

numbers.each do |num|
  num.each_with_index do |n, i|
    if i != (N - 1)
      result_table[n - 1][num[i + 1] - 1] = true
      result_table[num[i + 1] - 1][n - 1] = true
    end
  end
end

count = 0

result_table.each do |r|
  count += r.count(false)
end

puts count / 2
