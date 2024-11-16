# https://atcoder.jp/contests/abc350/tasks/abc350_c

N = gets.to_i
numbers = gets.chomp.split(' ').map(&:to_i)

positions = Array.new(N + 1, 0)
numbers.each_with_index do |n, i|
  positions[n] = i
end

count = 0
results = []

for i in 0...N do
  if numbers[i] != i + 1
    # numbersで、今入っている数字
    t1 = numbers[i]
    # 本来あって欲しい数字
    t2 = i + 1
    # 今の数字のインデックス番号
    i1 = i
    # 本来あって欲しい数字がある場所
    i2 = positions[i + 1]

    results << [i1 + 1, i2 + 1]
    count += 1

    numbers[i] = t2
    numbers[positions[i + 1]] = t1

    # 今のインデックスと一緒になったはず
    positions[i + 1] = i
    # 今入っている数字は入っていて欲しい数の場所へ
    positions[t1] = i2
  end
end

puts count
if results.length > 0
  results.each do |r|
    puts r[0].to_s + ' ' + r[1].to_s
  end
end
