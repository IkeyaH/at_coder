N, M = gets.chomp.split(' ').map(&:to_i)
a_arr = gets.chomp.split(' ').map(&:to_i)
b_arr = gets.chomp.split(' ').map(&:to_i)
max_b = b_arr.max

r = max_b # 現状流れてくる最大値

ids = Array.new(r + 1, -1)

for i in 0...N do
  person = i + 1
  if a_arr[i] <= r
    (a_arr[i]..r).each do |j|
      ids[j] = person
    end
    r = a_arr[i] - 1
  end
end

b_arr.each do |b|
  puts ids[b]
end
